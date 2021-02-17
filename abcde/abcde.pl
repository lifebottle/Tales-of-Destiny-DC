#!/usr/bin/perl

# abw's basic custom data encoder

package abcde;

use strict;
use warnings;

my $usage = <<USAGE;
usage: $0 <options> [-cm <command module> [<command module options>]]

In its most basic form, this program reads data from STDIN, translates it according to the provided table files and
other general options, and writes it to STDOUT. This form is useful for integration into other programs (e.g. hex
editors, (dis)assemblers, etc.) and for examining the translation process in detail, but is unlikely to be of much
interest to the average user as its scope is limited to the translation of data that should be translated and makes
no attempt to e.g. update pointers or exclude portions of the input data from translation.

The average user is more likely to be interested in the command modules. Currently, varying levels of support for Atlas
and Cartographer command files have been implemented; see those modules' documentation for more details.

Available required options:
-m <mode> / --mode <mode>: select operation mode; <mode> value can be either 'bin2text', in which case binary data on
	STDIN is translated to text on STDOUT, or 'text2bin', in which case text data on STDIN is translated to binary
	data on STDOUT.
-t <table> / --table <table file>: specify the file name of a table file to use in translation. Include this option
	once for each table file to be used in translation. Note that when provided on the command line, relative
	paths are assumed to be anchored at the current directory.

Available optional options:
-g / --group: instead of normal output, print the output grouped by token (primarily used for debug, but also available
	for interest's sake).
-h / --help: print this help text and exit; if used in conjunction with -cm <command module name>, instead print help
	text for the specified command module and exit.
-brp / --base-relative-path <path>: sets the base relative path used by command modules to <path> instead of the
	current directory; see command module documentation for details including any special <path> values.
-s / --stats: after normal output, print some statistics to STDERR.
--artificial-end-token <label>: <label> used to indicate the logical end of a fixed-length string during insertion.
--multi-table-files: allow multiple logical tables inside a single table file.
--no-unicode-normalization: if set, prevents the default canonical decomposition (NFD) of all text input and canonical
	composition (NFC) of all text output
--start-table-file-name: specify the file name of the table to be used as the starting table for translation; if not
	specified, this defaults to the first table provided on the command line with -t.

Available command modules:
abcde::Atlas: Atlas emulation; implies --mode text2bin
abcde::Cartographer: Cartographer emulation; implies --mode bin2text

Available command module options:
All options following the command module name are passed directly to the command module; see the documentation for the
selected command module for details.
USAGE

# TBD:
# also implement longest-leftmost insert (valid for single table + all table entries have same binary width + no normal table entry has > 2 characters + all characters used in normal entries have an entry with just that character)
# also implement dynamic programming insert (valid for single table + no table entry's binary is a prefix of any other table entry's binary)
# also implement insert algorithm selection, defaulting to the fastest valid algorithm
# add string format support (non-text prefixes, with special case for pascal string lengths)
# add more pointer support (ability to specify where individual bits of pointer should be read from)
# update Atlas/Cartographer modules to support bit-oriented operations
# add more/better debug output (especially for Atlas, which has a debug flag) and stats
# ability to import one table file into another (useful e.g. when the game uses dozens of table files that differ only on a couple of control codes)
# increase support for pointer arithmetic (e.g. games that store P in ROM and then access e.g. P/2)
# combining characters stored on line N lines above the characters they combine with, e.g. JP dakuten marks written above their kana in NES games
# add check for writing the same address twice
# convert Cartographer's exclusive addresses to inclusive to match Atlas' behaviour


BEGIN {
	require Time::HiRes;
	$abcde::stats{totalTime} = Time::HiRes::gettimeofday();
	$| = 1;
	require File::Basename;
	require File::Spec;
	my $dir = File::Spec->catdir(File::Basename::dirname(File::Spec->rel2abs(__FILE__)), '.');
	# make sure our pre-packaged CPAN modules and abcde::* are in @INC before anything else the user might have installed on their system
	unshift(@INC, File::Spec->catdir($dir.'/cpan'), $dir);

	binmode(STDERR, ':utf8');
}
{
	# for debug only
	no warnings qw(once);
	require Data::Dumper;
	$Data::Dumper::Sortkeys = 1;
}

use Encode ();

use abcde::Table::Table;
use abcde::Table::Token;

my @tableFileNames = ();
my $startTable;
my $startTableFileName;
my $printHelp = 0;

# default values
%abcde::tablesByFileName = ();
%abcde::tablesByID = ();
@abcde::allTables = ();
%abcde::internalTokens = ();
$abcde::commandFileType = '';
@abcde::commandFileArgs = ();
%abcde::options = (
	allowMultipleTablesPerFile => 0,
	artificial_end_token => undef,
	group => 0,
	mode => undef,
	printStats => 0,
	baseRelativePath => File::Spec->curdir(),
	unicode_normalization => 1,
);

$abcde::reserved_chars = { open => '<', close => '>' }; # I might make this configurable later

# read options from command line
#@ARGV = map { Encode::decode_utf8($_, 1) } @ARGV;
if (!@ARGV) {
	die $usage;
}
while (my $arg = shift(@ARGV)) {
	if ($arg eq '--artificial-end-token') {
		($abcde::options{artificial_end_token} = shift(@ARGV)) =~ s/(?:\\n)*$//;
		if ($abcde::options{artificial_end_token} !~ /^$abcde::reserved_chars->{open}(?:)[^$abcde::reserved_chars->{open}$abcde::reserved_chars->{close}]+$abcde::reserved_chars->{close}$/) {
			die ("invalid artificial-end-token label");
		}
	} elsif ($arg eq '-cm') {
		$abcde::commandFileType = shift(@ARGV);
		@abcde::commandFileArgs = @ARGV;
		last;
	} elsif ($arg eq '-g' || $arg eq '--group') {
		$abcde::options{group} = 1;
	} elsif ($arg eq '-h' || $arg eq '--help') {
		$printHelp = 1;
	} elsif ($arg eq '-m' || $arg eq '--mode') {
		$abcde::options{mode} = lc(shift(@ARGV));
	} elsif ($arg eq '--multi-table-files') {
		$abcde::options{allowMultipleTablesPerFile} = 1;
	} elsif ($arg eq '--no-unicode-normalization') {
		$abcde::options{unicode_normalization} = 0;
	} elsif ($arg eq '-brp' || $arg eq '--base-relative-path') {
		$abcde::options{baseRelativePath} = shift(@ARGV);
	} elsif ($arg eq '-s' || $arg eq '--stats') {
		$abcde::options{printStats} = 1;
	} elsif ($arg eq '--start-table-file-name') {
		$startTableFileName = shift(@ARGV);
	} elsif ($arg eq '-t' || $arg eq '--table') {
		push(@tableFileNames, shift(@ARGV));
	} else {
		die ("unknown option '$arg'\n\n$usage");
	}
}

# start validating command line args
if ($abcde::commandFileType) {
	my @parts = split(/'|::/, $abcde::commandFileType);
	foreach (@parts) {
		die ("invalid command module name") if ($_ !~ /^[A-Za-z_][A-Za-z0-9_]*$/);
	}
	eval "require $abcde::commandFileType" or die ("error loading command module '$abcde::commandFileType': $@");
	$abcde::commandFileType->updateOptions();
}
if ($printHelp) {
	if ($abcde::commandFileType) {
		$abcde::commandFileType->printHelp();
	} else {
		print STDOUT $usage;
	}
	exit;
}
if (!defined($abcde::options{mode}) || $abcde::options{mode} !~ /^(?:bin2text|text2bin)$/) {
	die ("missing or unknown mode!");
}

# TBD: are these actually useful anymore?
# set up internal tokens
# FB => no-match fallback token
# FC => expired count fallback token
# FF => forced fallback token
# FI => immediate fallback
foreach my $flag (qw(FB FC FF FI)) {
	$abcde::internalTokens{$flag} = abcde::Table::Token->create(undef, {$flag => 1}, '', 0, '');
}

# set up tables
$abcde::minBinPerText = 0.25; # heuristic factor for multi-table insertion; initialized to 1 bit per 4 characters, which is what $abcde::rawTable produces
# $abcde::rawTable and $abcde::rawBitTable must exist before calling finalize() on any other tables
$abcde::rawTable = abcde::Table::Table->generateRawTable(); # contains both bit and byte entries
$abcde::rawBitTable = abcde::Table::Table->generateRawBitTable(); # contains only bit entries; used for bin2text
$abcde::rawTable->finalize();
$abcde::rawBitTable->finalize();
# add any tables passed on the command line so that they will be available for command modules too
foreach my $fileName (@tableFileNames) {
	$fileName = File::Spec->rel2abs(File::Spec->catdir($abcde::options{baseRelativePath}, $fileName));
	my $tables = abcde::Table::Table->addTableFile($fileName);
	$startTable ||= $tables->[0];
}

if ($abcde::commandFileType) {
	$abcde::commandFileType->handleCommandFile(\@abcde::commandFileArgs);
} else {
	# do stuff that can't be done until we've finished parsing all of the table files
	foreach my $table (@abcde::allTables) {
		$table->finalize();
	}
	if (defined($startTableFileName)) {
		if ($abcde::tablesByFileName{$startTableFileName}) {
			$startTable = $abcde::tablesByFileName{$startTableFileName}->[0];
		} else {
			die ("--start-table-file-name was given, but no table with that file name exists");
		}
	} else {
		$startTable ||= $abcde::rawTable;
	}

	# read input, defaulting to translating all of STDIN
	{
		local $/ = undef;
		if ($abcde::options{mode} eq 'bin2text') {
			binmode(STDIN, ':raw');
			binmode(STDOUT, ':utf8');
		} elsif ($abcde::options{mode} eq 'text2bin') {
			binmode(STDIN, ':utf8');
			binmode(STDOUT, ':raw');
		}
		$abcde::data = <STDIN>;
		if ($abcde::options{mode} eq 'bin2text') {
			$abcde::data = unpack('B*', $abcde::data); # bloat input up to 1 character per byte cuz working with bits in perl is super annoying; TBD: this is probably the best place to start when optimizing RAM usage
		} elsif ($abcde::options{mode} eq 'text2bin') {
			$abcde::data =~ s/\R//g; # ignore newlines during text2bin
		}
	}

	# create a String object, parse our input, print out the result
	require abcde::String::BasicString;
	my $string = abcde::String::BasicString->create($startTable);
	$string->parse();
	my $output = $string->output();
	if ($abcde::options{mode} eq 'text2bin' && !$abcde::options{group}) {
		$output = pack('B*', $output); # convert characters to binary
	}
	print STDOUT $output;
}

if ($abcde::options{printStats}) {
	# print stats
	$abcde::stats{totalTime} = (Time::HiRes::gettimeofday() - $abcde::stats{totalTime});

	print STDERR "\n=== Stats ($abcde::options{mode}) ===\n";
	print STDERR "\nBlock\tStrings\tBits\tTokens\tChars\tTime (s)\n";
	foreach my $block_name (sort keys %{$abcde::stats{blocks}}) {
		my $block = $abcde::stats{blocks}->{$block_name};
		print STDERR "$block_name:\t$block->{strings}\t$block->{bits}\t$block->{tokens}\t$block->{chars}\t$block->{time} seconds\n";
	}
	print STDERR "Total\t$abcde::stats{totalStrings}\t$abcde::stats{totalBits}\t$abcde::stats{totalTokens}\t$abcde::stats{totalChars}\t".sprintf('%.3f', $abcde::stats{totalTime})." seconds\n";

	my $other_stats = "";
	foreach my $key (sort keys %abcde::stats) {
		next if ($key =~ /^(?:blocks|totalStrings|totalBits|totalTokens|totalChars|times|totalTime)$/);
		$other_stats .= "$key: $abcde::stats{$key}\n";
	}
	print STDERR "\nOther stats:\n$other_stats" if ($other_stats);
}
