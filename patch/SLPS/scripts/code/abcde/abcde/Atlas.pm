package abcde::Atlas;

use strict;
use warnings;

use Encode ();
use Unicode::Normalize ();

use abcde::String::BasicString;

%abcde::Atlas::userVars = ();
%abcde::Atlas::defaultSettings = (
	addressType => 'LINEAR',
	autoCmd => {},
	continuousFile => 'FALSE',
	currentInsertAddress => undef,
	endianness => 'LITTLE',
	excessScriptSize => 0,
	headerSize => 0,
	pascalLength => 1,
	pascalType => 'BYTES',
	stringType => 'ENDTERM',
);
%abcde::Atlas::settings = (); # current settings
$abcde::Atlas::command_file_path = undef;
@abcde::Atlas::textBuffer = ();
$abcde::Atlas::SCRIPT_FILE = undef;
$abcde::Atlas::POINTER_FILE = undef;

my $usage = "Atlas Module Usage: perl $0 <options> -cm abcde::Atlas [-d filename] TargetFile ScriptFile.txt [ScriptFile2.txt ...]";

sub printHelp {
	my ($class) = @_;

	print <<DONE;
$usage

See Atlas's documentation (included for your convenience under abcde's docs/Atlas directory; Atlas itself is available
via e.g. http://www.romhacking.net/utilities/224/) for a description of its command file format.

This module provides support for Atlas command files, with some caveats.
Most valid Atlas command files should be valid here too, but our command file parsing rules, order of execution, and
final output are subtly different from Atlas'.
The salient differences are as follows:
- Extensions are not supported; extension commands are recognized but will only generate a warning and then be ignored.
- Variable names are allowed to be 1 character long.
- Command parsing is stricter (argument list must start with "(", can't have non-whitespace/non-comment text after
	commands).
- Nonsensical commands (e.g. #STRINGALIGN(-5)) generate errors.
- Errors caused by using the same variable name for different types are caught earlier (during #VAR instead of when
	using the variable).
- Lowercase hexadecimal strings are supported.
- Newlines no longer break tokenization.
- Many command file errors which Atlas ignores more-or-less silently now generate fatal errors.
- Each referenced table file must be a valid abcde table file. This may require updating older table files and/or Atlas
	command files.
-- In particular, end tokens are not required to begin with a character for which a normal text entry exists.
- Translating character data into binary according to abcde's updated table file semantics may result in us generating
	different output than Atlas.
- Multiple ScriptFiles can now be passed in on the command line.
- When multiple #AUTOWRITE commands are active, each #AUTOWRITE keeps track of its own pointers.
- The #ADDTABLE, #SETTARGETFILE, and #SETPTRFILE commands are affected by abcde's -brp / --base-relative-path <path>
	option; if <path> is the special value '*', <path> will be set to the directory containing the ScriptFile to be
	processed.

For invalid Atlas command files, our error messaging is likely to be different from Atlas'.

Additionally, several Atlas commands which have unclear documentation or discrepancies between their documentation and
implementation now have the following behaviour:
- #HDR's value is also used to affect #STRINGALIGN's calculation.
- #FIXEDLENGTH's FillCharacter may also be specified in hexadecimal, but must be an 8-bit value (Atlas actually accepts
	a 16-bit value and then discards the high 8 bits).
- #STRINGALIGN's calculation is affected by #HDR, and therefore refers to the *ROM* address, not the *file* address.
- #PASCALLEN defaults to 1.
- #ENDIANSWAP also affects the length bytes of PASCAL strings.
- #W32, #W24, and #W16 now accept an optional custompointer as advertised.
- #WHW(custompointer, number) now works correctly.
- #WRITE(pointertable, number) actually updates the current pointer index, so you can't blindly mix it with
	#WRITE(pointertable) and expect things to work correctly.
- when a string is subject to #ENDIANSWAP("TRUE"), #FIXEDLENGTH, and #PASCALLEN(4), Atlas adds an extra 1 byte to the
	string length.
- if you have multiple #AUTOWRITE commands active for the same type of variable (PtrTbl/PtrList) and EndTag, Atlas
	ignores all but the first such command.
- #AUTOWRITE does not write a pointer to data written after the last end token in the text.
- #AUTOWRITE with PtrList now throws an error when attempting to write a pointer that does not exist in the list.
- the effective #EMBTYPE values for a given embedded pointer are determined at that embedded pointer's first #EMBSET or
	#EMBWRITE; changing #EMBTYPE afterwards only affects embedded pointers that have not yet been part of any
	#EMBSET or #EMBWRITE command.
- #EXTEXEC and #EXTLOAD do not exist, they are really #EXECEXT and #LOADEXT.
DONE
}

my $identifier = qr/[A-Za-z_][A-Za-z_0-9]*/;
my $param_separator = qr/,[ \t]*/;
my $dec_or_hex = qr/(?:-?[0-9]+|-?\$[0-9A-Fa-f]+|\$-?[0-9A-Fa-f]+)/; # Atlas only accepts $-hex; we'll accept both -$hex and $-hex
my $non_negative_dec_or_hex = qr/(?:[0-9]+|\$[0-9A-Fa-f]+)/;
my $positive_dec_or_hex = qr/(?:[0-9]*[1-9][0-9]*|\$[0-9A-Fa-f]*[1-9A-Fa-f][0-9A-Fa-f]*)/;
my $non_negative_dec_or_hex_byte = qr/\$[0-9A-Fa-f]{2}|25[0-5]|2[0-4][0-9]|[01][0-9][0-9]|[0-9][0-9]|[0-9]/;

# accept a CALCVAR anywhere we accept a number
my $dec_or_hex_or_calcvar = qr/(?:$dec_or_hex|$identifier)/;
my $non_negative_dec_or_hex_or_calcvar = qr/(?:$non_negative_dec_or_hex|$identifier)/;
my $positive_dec_or_hex_or_calcvar = qr/(?:$positive_dec_or_hex|$identifier)/;

my $addressType = qr/LINEAR|LOROM00|LOROM80|HIROM|GB|POINTER_RELATIVE/;
my $boolean = qr/TRUE|FALSE/;
my $calcString = qr/(?:[0-9+\-\/*&|^()?:<>= ]|\$[0-9A-Fa-f]+|\%[01]+|!$identifier)+/;
my $pascalType = qr/BYTES|TOKENS/;
my $pointerSize = qr/8|16|24|32/;
my $strType = qr/ENDTERM|PASCAL/;
my $varType = qr/CALCVAR|COUNTER|CUSTOMPOINTER|POINTERTABLE|POINTERLIST|EMBPOINTERTABLE|TABLE|EXTENSION/;

my %syntax = (
	# General Commands
	JMP		=> [
				qr/($non_negative_dec_or_hex_or_calcvar)/, # number Address
				qr/($non_negative_dec_or_hex_or_calcvar)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # number Address, number MaxAddress
			],
	HDR		=> [ qr/($dec_or_hex_or_calcvar)/ ], # number HeaderSize
	ADDTBL		=> [ qr/"(.*)"$param_separator($identifier)/ ], # string TblFileName, table TableId
	ACTIVETBL	=> [
				qr/($identifier)/, # table TableId
				qr/(@.*)/, # string TableId
			],
	VAR		=> [ qr/($identifier)$param_separator($varType)/ ], # variable VarName, variabletype Type
	# String Commands
	FIXEDLENGTH	=> [ qr/($non_negative_dec_or_hex_or_calcvar)$param_separator($non_negative_dec_or_hex_byte)/ ], # number Length, number FillCharacter
	STRINGALIGN	=> [ qr/($positive_dec_or_hex_or_calcvar)/ ], # number AlignValue
	STRTYPE		=> [ qr/"($strType)"/ ], # string StringType
	PASCALLEN	=> [ qr/([1-4])/ ], # number NewLength
	# High-Level Pointer Commands (WRITE also appears under Embedded Pointer Commands in the Atlas documentation, and DISABLE under Extension Commands; WRITE also accepts a COUNTER)
	ENDIANSWAP	=> [ qr/"($boolean)"/ ], # string DoSwap
	CREATEPTR	=> [ qr/($identifier)$param_separator"($addressType)"$param_separator($dec_or_hex_or_calcvar)$param_separator($pointerSize)/ ], # custompointer PtrName, string AddressType, number Offsetting, number PtrSize
	WRITE		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / pointertable PtrTbl, number PtrNum / embpointertable PtrTbl, number PtrNum / counter Ctr, number Address
				qr/($identifier)/ # pointertable PtrTbl / pointerlist List / embpointertable PtrTbl
			],
	PTRTBL		=> [ qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)$param_separator($positive_dec_or_hex_or_calcvar)$param_separator($identifier)/ ], # pointertable PtrTbl, number Start, number Offsetting, custompointer Ptr
	PTRLIST		=> [ qr/($identifier)$param_separator"(.*)"$param_separator($identifier)/ ], # pointerlist List, string Filename, custompointer Ptr
	AUTOWRITE	=> [ qr/($identifier)$param_separator"(.*)"/ ], # pointertable PtrTbl, string EndTag / pointerlist PtrList, string EndTag
	DISABLE		=> [
				qr/($identifier)$param_separator"(.*)"/, # pointertable PtrTbl, string EndTag / pointerlist PtrList, string EndTag
				qr/("$identifier")$param_separator"(.*)"/, # string Function, string EndTag
			],
	# Low-Level Pointer Commands (also COUNTER commands)
	SMA		=> [ qr/"($addressType)"/ ], # string AddressType
	W32		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	W24		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	W16		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	WLB		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	WHB		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	WBB		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	WUB		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	WHW		=> [
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
	# Embedded Pointer Commands
	EMBTYPE		=> [ qr/"($addressType)"$param_separator($pointerSize)$param_separator($dec_or_hex_or_calcvar)/ ], # string AddressType, number Size, number Offsetting
	EMBSET		=> [ qr/($non_negative_dec_or_hex_or_calcvar)/ ], # number PointerNum
	EMBWRITE	=> [ qr/($non_negative_dec_or_hex_or_calcvar)/ ], # number PointerNum
	EMBPTRTBL	=> [ qr/($identifier)$param_separator($positive_dec_or_hex_or_calcvar)$param_separator($identifier)/ ], # embpointertable PtrTbl, number PtrCount, custompointer Ptr
	# Multifile Commands
	SETTARGETFILE	=> [ qr/"(.*)"/ ], # string Filename
	SETPTRFILE	=> [ qr/"(.*)"/ ], # string Filename
	# Extension Commands
	LOADEXT		=> [ qr/($identifier)$param_separator"(.*)"/ ], # extension Ext, string Filename
	EXECEXT		=> [ qr/($identifier)$param_separator"($identifier)"/ ], # extension Ext, string Function
	AUTOEXEC	=> [ qr/($identifier)$param_separator"($identifier)"$param_separator"(.*)"/ ], # extension Ext, string Function, string EndTag

	# My Atlas addtions
	AUTOCMD		=> [ qr/($non_negative_dec_or_hex_or_calcvar)$param_separator(.*)/ ], # number Address, any other command
	CALC		=> [ qr/($identifier)$param_separator"($calcString)"/ ], # calcvar Var, string Expr
	CONTINUOUSFILE	=> [ qr/"($boolean)"/ ], # boolean Continuous
	CREATECTR	=> [ qr/($identifier)$param_separator($positive_dec_or_hex_or_calcvar)$param_separator($dec_or_hex_or_calcvar)/ ], # counter Ctr, number Size, number Value
	INC		=> [ qr/($identifier)$param_separator($dec_or_hex_or_calcvar)/ ], # counter Ctr, number Amount
	PASCALTYPE	=> [ qr/"($pascalType)"/ ], # string PascalType
	PRINT		=> [ qr/($identifier)$param_separator($positive_dec_or_hex_or_calcvar)/ ], # calcvar Var, number Size
	READ		=> [ qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/ ], # calcvar Var, number Address
	SKIP		=> [ qr/($dec_or_hex_or_calcvar)/ ], # number Offsetting
	W8		=> [ # same thing as #WLB, but consistent naming with #W16 etc.
				qr/($identifier)$param_separator($non_negative_dec_or_hex_or_calcvar)/, # custompointer Ptr, number Address / counter Ctr, number Address
				qr/($non_negative_dec_or_hex_or_calcvar)/ # number Address
			],
);
my $commands = join('|', keys %syntax);
$commands = qr/$commands/;
my $Encode = Encode::find_encoding('UTF-8');

sub updateOptions {
	my $mode = 'text2bin';
	if (!defined($abcde::options{mode})) {
		$abcde::options{mode} = $mode;
	} elsif ($abcde::options{mode} ne $mode) {
		$abcde::options{mode} = $mode;
		warn ("Incorrect mode detected; switching to $abcde::options{mode}!\n");
	}
}

sub handleCommandFile {
	my ($class, $args) = @_;

	my $debug_fh = undef;
	if (defined($args->[0]) && $args->[0] eq '-d') {
# TBD: actually print some debugging info
		shift(@$args);
		my $debug_filename = shift(@$args);
		if ($debug_filename eq 'stdout') {
			$debug_fh = *STDOUT;
		} else {
			open($debug_fh, '>:encoding(UTF-8)', $debug_filename) || die("Can't open $debug_filename for write!\n");
		}
	}

	# if there were tables passed in on the command line, handle those first
	foreach my $table (@abcde::allTables) {
		$table->finalize();
	}

	my ($rom_filename, @commands_filenames) = @$args;
	if (scalar(@$args) < 2) {
		die ("$usage\n");
	}

	my $num_commands_filenames = scalar(@commands_filenames);
	foreach my $i (0..$num_commands_filenames - 1) {
		my $commands_filename = $commands_filenames[$i];
		# set up for next command file
		if (($abcde::Atlas::settings{continuousFile}//'') eq 'TRUE') { # settings won't be defined yet on the first iteration
			$abcde::Atlas::settings{continuousFile} = 'FALSE'; # #CONTINUOUSFILE only applies until the next file
		} else {
			%abcde::Atlas::settings = %abcde::Atlas::defaultSettings;
			init_user_vars();
			@abcde::Atlas::textBuffer = ();
			open($abcde::Atlas::SCRIPT_FILE, '+<:raw', $rom_filename) || die("Can't open $rom_filename for read!\n");
			open($abcde::Atlas::POINTER_FILE, '+<:raw', $rom_filename) || die("Can't open $rom_filename for read!\n");
		}

		print STDOUT "Opening command file '$commands_filename'...\n" if ($num_commands_filenames > 1);
		open(COMMAND_FILE, '<:raw', $commands_filename) || die("Can't open $commands_filename for read!\n");
		$abcde::Atlas::command_file_path = ($abcde::options{baseRelativePath} eq '*' ? File::Basename::dirname($commands_filename) : $abcde::options{baseRelativePath});
		$abcde::Atlas::settings{commands_filename} = $commands_filename;

		# first pass: process commands related to table loading since we need to have all the tables loaded before calling finalize() on them
		while (my $line = <COMMAND_FILE>) {
			eval { $line = $Encode->decode($line, Encode::FB_CROAK); };
			if ($@) {
				(my $err = $@) =~ s/^utf8 | at .*//gs;
				die ("Input file encoding error: $err at $commands_filename line ".COMMAND_FILE->input_line_number()."!\n");
			}
			$line = Unicode::Normalize::NFD($line) if ($abcde::options{unicode_normalization});
			if (COMMAND_FILE->input_line_number() == 1) {
				$line =~ s/^\N{U+FEFF}//; # strip out Unicode BOM if present
			}
			next if ($line =~ m|^[ \t]*//|); # comments on non-command lines must not be preceded by anything except spaces and tabs
			$line =~ s/\R//; # strip trailing newline
			next if ($line eq '');
			if ($line =~ /^[ \t]*#/) { # there's probably no way to start a text line with #
				$line =~ s/^[ \t]+|[ \t]+$//g; # we'll still allow leading/trailing whitespace on command lines
				if ($line =~ /^#(VAR|ADDTBL|RELPATHBASE)\(/) { # Atlas' parser actually accepts anything in place of (, but then it crashes
					my $command = $1;
					my $valid = 0;
					foreach my $signature (@{$syntax{$command}}) {
						if (my @command_args = $line =~ /^#$command\($signature\)(?:[ \t]*\/\/.*)?$/) { # Atlas actually accepts any text following a valid command, but we'll only allow comments preceded by optional whitespace
							$valid = 1;
							my $method = "do_$command";
							eval { $class->$method($command, \@command_args); };
							if ($@) {
								chomp($@);
								die("$@ at $commands_filename line ".COMMAND_FILE->input_line_number()."!\n");
							}
							last;
						}
					}
				}
			}
		}
		foreach my $table (@abcde::allTables) {
			$table->finalize();
		}

		# second pass: actually do stuff
		seek(COMMAND_FILE, 0, 0);
		COMMAND_FILE->input_line_number(0);
		while (my $line = <COMMAND_FILE>) {
# TBD: Atlas commands implicitly end text strings; that was fine for Atlas when it only had to deal with one table per string,
# but presents a problem for abcde, since a multi-table string that requires an internal Atlas command (e.g. embedded pointers) effectively reverts to ACTIVETBL mid-string regardless of what table the latest string fragment actually ended on
			$line = $Encode->decode($line, Encode::FB_CROAK);
			$line = Unicode::Normalize::NFD($line) if ($abcde::options{unicode_normalization});
			if (COMMAND_FILE->input_line_number() == 1) {
				$line =~ s/^\N{U+FEFF}//; # strip out Unicode BOM if present
			}
			next if ($line =~ m|^[ \t]*//|); # comments on non-command lines must not be preceded by anything except spaces and tabs
			$line =~ s/\R//; # strip trailing newline
			next if ($line eq '');
			if ($line =~ /^[ \t]*#/) { # there's probably no way to start a text line with #
				$line =~ s/^[ \t]+|[ \t]+$//g; # we'll still allow leading/trailing whitespace on command lines
				if ($line =~ /^#($commands)\(/) { # Atlas' parser actually accepts anything in place of (, but then it crashes
					my $command = $1;
					my $valid = 0;
					foreach my $signature (@{$syntax{$command}}) {
						if (my @command_args = $line =~ /^#$command\($signature\)(?:[ \t]*\/\/.*)?$/) { # Atlas actually accepts any text following a valid command, but we'll only allow comments preceded by optional whitespace
							$valid = 1;
							eval {
								$class->write_text_buffer(); # write previous data before changing settings
							};
							if ($@) {
								chomp($@);
								die("$@ in text string starting at $commands_filename line $abcde::Atlas::settings{startLine}!\n");
							}
							last if ($command =~ /^(?:VAR|ADDTBL|RELPATHBASE)$/); # already handled during first pass
							$abcde::Atlas::settings{startLine} = COMMAND_FILE->input_line_number();
							my $method = "do_$command";
							eval { $class->$method($command, \@command_args); };
							if ($@) {
								chomp($@);
								die("$@ at $commands_filename line ".COMMAND_FILE->input_line_number()."!\n");
							}
							last;
						}
					}
					if (!$valid) {
						die ("Invalid arguments to command '$command' at $commands_filename line ".COMMAND_FILE->input_line_number()."!\n");
					}
				} else {
					die("Invalid command at $commands_filename line ".COMMAND_FILE->input_line_number()."!\n");
				}
			} else {
				if (!@abcde::Atlas::textBuffer) {
					# remember settings in effect when the text started
					$abcde::Atlas::settings{startLine} = COMMAND_FILE->input_line_number();
				}
				# since input text can span multiple lines, we'll buffer it until we actually need to write a change
				push(@abcde::Atlas::textBuffer, $line);
			}
		}

		if ($i == $num_commands_filenames - 1 || $abcde::Atlas::settings{continuousFile} ne 'TRUE') {
			eval {
				$class->write_text_buffer(); # write the final text buffer
				# print some stats about the previous block, if applicable
				if (defined($abcde::Atlas::settings{maxAddress})) {
					my ($space, $negative) = ($abcde::Atlas::settings{excessScriptSize} ? ($abcde::Atlas::settings{excessScriptSize}, '-') : ($abcde::Atlas::settings{maxAddress} - $abcde::Atlas::settings{currentInsertAddress} + 1, ''));
					print STDOUT "#JMP bounded by \$".sprintf('%X', $abcde::Atlas::settings{maxAddress})." has $negative$space (\$$negative".sprintf('%X', $space).") space left.\n";
				}
			};
			if ($@) {
				chomp($@);
				die("$@ in text string starting at $commands_filename line $abcde::Atlas::settings{startLine}!\n");
			}
			if ($abcde::Atlas::settings{embeddedPointers}) {
				# check for any embedded pointers that were only half finished
				foreach my $index (0..scalar(@{$abcde::Atlas::settings{embeddedPointers}->{pointers}}) - 1) {
					my $embpointer = $abcde::Atlas::settings{embeddedPointers}->{pointers}->[$index];
					if ($embpointer) {
						if (!defined($embpointer->{pointerAddress})) {
							warn("Missing EMBSET for embedded pointer #$index!\n");
						}
						if (!defined($embpointer->{pointeeAddress})) {
							warn("Missing EMBWRITE for embedded pointer #$index!\n");
						}
					}
				}
			}
			close($abcde::Atlas::SCRIPT_FILE);
			close($abcde::Atlas::POINTER_FILE);
		}
	}

	if ($debug_fh && $debug_fh != *STDOUT) {
		close($debug_fh);
	} # else: either there is no $debug_fh, in which case there's nothing to close, or it's STDOUT, in which case we still want it open for other purposes
	close(COMMAND_FILE);
}

# check whether the given variable name has been declared, is of the right type, and its initialization status is proper for the command being executed (not initialized for initializing commands, initialized for non-initialing commands)
# $init: 0 => command is not an initializing command, 1 => command is an initializing command, 2 => command can both initialize and re-initialize
sub check_var {
	my ($class, $command, $varName, $varTypes, $init) = @_;

	if (!$abcde::Atlas::userVars{$varName}) { # no #VAR yet
		die("Attempt to #$command using undeclared variable '$varName'!\n");
	} elsif (!scalar(grep { $_ eq $abcde::Atlas::userVars{$varName}->{varType} } @$varTypes)) { # #VAR done, but with wrong type
		die("Attempt to #$command using variable '$varName' of type '$abcde::Atlas::userVars{$varName}->{varType}' instead of one of (".join(', ', map {"'$_'"} @$varTypes).")!\n");
	} elsif (!$init && !defined($abcde::Atlas::userVars{$varName}->{value})) { # #VAR done, but trying to use it before initializing
		die("Attempt to #$command using undefined variable '$varName'!\n");
	} elsif (defined($init) && $init == 1 && defined($abcde::Atlas::userVars{$varName}->{value})) { # #VAR done and initialized, but attempting to re-initialize it
		die("Attempt to #$command variable '$varName' which has already been defined!\n");
	} elsif (defined($init) && $init == 2 && $abcde::Atlas::userVars{$varName}->{varType} eq 'CALCVAR' && $varName eq 'CURRENT_ADDRESS') { # attempting to write to read-only CALCVAR
		die("Attempt to write to read-only CALCVAR variable '$varName' in #$command!\n");
	}
}

sub init_user_vars {
	# using references to settings so we don't have to worry about keeping userVars in sync with settings
	%abcde::Atlas::userVars = (
		CURRENT_ADDRESS => {varType => 'CALCVAR', value => \$abcde::Atlas::settings{currentInsertAddress}},
	);
}

sub parse_number {
	my ($class, $command, $number) = @_;

	# accept an initialized CALCVAR anywhere we accept a number
	if ($number =~ /^$identifier$/) {
		$class->check_var($command, $number, ['CALCVAR']);
		$number = ${$abcde::Atlas::userVars{$number}->{value}};
	}
	my $negative = $number =~ s/^(?:\$-|-\$)/\$/; # strip negative sign since hex() chokes on negative hex strings
	if ($number =~ s/^\$//) { # strip '$'
		$number = hex($number); # convert hex string to decimal integer
	} # else: already is a decimal integer
	if ($negative) {
		$number *= -1; # reapply negative sign
	}

	return $number;
}

# $address: file address in bytes of first byte of the location to write the counter to
# $value: the value to write
# $shift: number of bits to right-shift counter by (used for writing only certain bits of a counter)
# $writeSize: number of bits to write to file
sub write_counter {
	my ($class, $address, $value, $shift, $writeSize) = @_;

	# counters get written with the same commands as pointers, so maybe this should go to POINTER_FILE instead of SCRIPT_FILE?
	seek($abcde::Atlas::SCRIPT_FILE, $address, 0) or die("Seek failure?!");
	$value = $value >> $shift;
	my $writeMask = (1 << $writeSize) - 1;
	$value = $value & $writeMask;
	$value = sprintf('%0'.($writeSize / 4).'X', $value);
	if ($abcde::Atlas::settings{endianness} eq 'LITTLE') {
		my @bytes = $value =~ m/(..)/g;
		$value = join('', reverse(@bytes));
	}
	print $abcde::Atlas::SCRIPT_FILE pack('H'.($writeSize / 4), $value);
	seek($abcde::Atlas::SCRIPT_FILE, $abcde::Atlas::settings{currentInsertAddress}, 0) or die("Seek failure?!");
}

sub write_low_level_pointer {
	my ($class, $command, $args, $shift, $writeSize) = @_;

	my ($varName, $obj);
	if (scalar(@$args) == 2) {
		$varName = shift(@$args);
		$class->check_var($command, $varName, ['CALCVAR', 'COUNTER', 'CUSTOMPOINTER']);
		$obj = $abcde::Atlas::userVars{$varName};
	}
	my $writeAddress = $class->parse_number($command, shift(@$args));
	if ($obj && $obj->{varType} eq 'COUNTER') {
		$class->write_counter($writeAddress, $obj->{value}->{value}, $shift, $writeSize);
	} elsif ($obj && $obj->{varType} eq 'CALCVAR') {
		my $value = ${$obj->{value}};
		$class->write_counter($writeAddress, $value, $shift, $writeSize);
	} else {
		my ($addressType, $offset, $pointerSize);
		if ($obj) {
			($addressType, $offset, $pointerSize) = ($obj->{value}->{addressType}, $obj->{value}->{offset}, $obj->{value}->{size});
		} else {
			($addressType, $offset, $pointerSize) = ($abcde::Atlas::settings{addressType}, 0, -1);
		}
		$class->write_pointer($writeAddress, $addressType, $offset, $shift, $writeSize, $pointerSize, undef);
	}
}

# $pointerAddress: file address in bytes of first byte of the pointer itself
# $addressType: as per #SMA
# $offset: value in bytes to subtract from address of the first byte of the string being pointed to
# $shift: number of bits to right-shift string address by (used for writing only certain bytes of an address)
# $writeSize: number of bits to write to file
# $pointerSize: for custom pointers, the number of bits the custom pointer can hold (used for e.g. #WHW on a 16-bit custom pointer to a 32-bit address)
# $pointeeAddress: file address in bytes of first byte of the data being pointed to; defaults to $abcde::Atlas::settings{currentInsertAddress}
sub write_pointer {
	my ($class, $pointerAddress, $addressType, $offset, $shift, $writeSize, $pointerSize, $pointeeAddress) = @_;

	die ("You must specify an address using #JMP before writing a pointer!\n") unless(defined($abcde::Atlas::settings{currentInsertAddress}));
	seek($abcde::Atlas::POINTER_FILE, $pointerAddress, 0) or die("Seek failure?!");
	my $value = (defined($pointeeAddress) ? $pointeeAddress : $abcde::Atlas::settings{currentInsertAddress});
	$value -= $abcde::Atlas::settings{headerSize};
	# Klarth, thanks for the Atlas source code showing what these address type strings actually mean, because otherwise I had no idea :p
	if ($addressType eq 'LOROM00') {
		my $bank = ($value & 0xFF0000) >> 16;
		my $word = $value & 0xFFFF;
		if ($word >= 0x8000) {
			$value = $bank * 0x20000 + $word + 0x10000;
		} else {
			$value = $bank * 0x20000 + $word + 0x8000;
		}
	} elsif ($addressType eq 'LOROM80') {
		my $bank = ($value & 0xFF0000) >> 16;
		my $word = $value & 0xFFFF;
		if ($word >= 0x8000) {
			$value = $bank * 0x20000 + $word + 0x10000;
		} else {
			$value = $bank * 0x20000 + $word + 0x8000;
		}
		$value += 0x800000;
	} elsif ($addressType eq 'HIROM') {
		$value += 0xC00000;
	} elsif ($addressType eq 'GB') {
		my $bank = int($value / 0x4000) & 0xFFFF;
		my $word = ($value % (($bank + 1) * 0x4000)) & 0xFFFF;
		$value = $bank * 0x10000 + $word;
	} elsif ($addressType eq 'POINTER_RELATIVE') {
		$value = $value - $pointerAddress + $abcde::Atlas::settings{headerSize};
	} # else: LINEAR, so nothing to do
	$value -= $offset;
	if ($pointerSize >= 0) { # chop string address down to what the custom pointer can hold
		my $pointerMask = (1 << $pointerSize) - 1;
		$value = $value & $pointerMask;
	}
	$value = $value >> $shift;
	my $writeMask = (1 << $writeSize) - 1;
	$value = $value & $writeMask;
	$value = sprintf('%0'.($writeSize / 4).'X', $value);
	if ($abcde::Atlas::settings{endianness} eq 'LITTLE') {
		my @bytes = $value =~ m/(..)/g;
		$value = join('', reverse(@bytes));
	}
	print $abcde::Atlas::POINTER_FILE pack('H'.($writeSize / 4), $value);
	seek($abcde::Atlas::SCRIPT_FILE, $abcde::Atlas::settings{currentInsertAddress}, 0) or die("Seek failure?!");
}

sub write_string {
	my ($class, $tokenList) = @_;

	die ("You must specify an address using #JMP before inserting text!\n") unless(defined($abcde::Atlas::settings{currentInsertAddress}));
	my $binary = pack('B*', abcde::String::BasicString->output($tokenList)); # Atlas only works with bytes
	my $bin_length = length($binary);
	my $reserved_space = ($abcde::Atlas::settings{stringType} eq 'PASCAL' ? $abcde::Atlas::settings{pascalLength} : 0);
	my $maxLength = ($abcde::Atlas::settings{fixedLength} ? $abcde::Atlas::settings{fixedLength} - $reserved_space : undef);
	if ($abcde::Atlas::settings{autoWrites}) {
		my $insertAddress = $abcde::Atlas::settings{currentInsertAddress};
		my $maxAddress = (defined($maxLength) ? $insertAddress + $maxLength : undef);
		my %pointeeAddresses = ();
		foreach my $token (@$tokenList) {
			last if (defined($maxAddress) && $insertAddress + $token->{binLength} > $maxAddress); # don't #AUTOWRITE pointers for parts of the string that we aren't going to insert since they're beyond the end of their fixed length
			if ($token->{flags}->{isEndToken}) {
				# check for any applicable #AUTOWRITEs
				if ($abcde::Atlas::settings{autoWrites}->{$token->{text}}) {
					foreach my $autoWrite (@{$abcde::Atlas::settings{autoWrites}->{$token->{text}}}) {
						my $varName = $autoWrite->{varName};
						$pointeeAddresses{$varName} //= $abcde::Atlas::settings{currentInsertAddress};
						my $obj = $abcde::Atlas::userVars{$varName}->{value};
						my $customPointer = $obj->{customPointer};
						my $pointerAddress;
						if ($abcde::Atlas::userVars{$varName}->{varType} eq 'POINTERLIST') {
							if ($obj->{pointerIndex} >= $obj->{numPointers}) {
								die("Attempt to write more pointers than exist in POINTERLIST '$varName'!\n")
							}
							$pointerAddress = $obj->{list}->[$obj->{pointerIndex}];
						} else {
							$pointerAddress = $obj->{startAddress} + $obj->{offsetting} * $obj->{pointerIndex};
						}
						$class->write_pointer($pointerAddress, $customPointer->{addressType}, $customPointer->{offset}, 0, $customPointer->{size}, $customPointer->{size}, int($pointeeAddresses{$varName}));
						$obj->{pointerIndex}++;
						$pointeeAddresses{$varName} = int($insertAddress + $token->{binLength} / 8);
					}
				}
			}
			$insertAddress += $token->{binLength} / 8;
		}
	}
	if ($abcde::Atlas::settings{fixedLength}) {
		if ($bin_length > $maxLength) {
			warn ("Length of string starting at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine} exceeded size specified by #FIXEDLENGTH!\n");
			$binary = substr($binary, 0, $maxLength);
			$bin_length = length($binary);
		} elsif ($bin_length < $maxLength) {
			$binary .= $abcde::Atlas::settings{fillChar} x ($maxLength - $bin_length);
		} # else: length($binary) == $maxLength and all is good
	}
	if ($abcde::Atlas::settings{stringType} eq 'PASCAL') {
		my $length;
		if ($abcde::Atlas::settings{pascalType} eq 'TOKENS') {
			$length = 0;
			foreach my $token (@$tokenList) {
				$length += $token->{numTokens};
			}
		} else {
			$length = $bin_length;
		}
		$length = sprintf('%0'.($abcde::Atlas::settings{pascalLength} * 2).'X', $length);
		if ($abcde::Atlas::settings{endianness} eq 'LITTLE') {
			my @bytes = $length =~ m/(..)/g;
			$length = join('', reverse(@bytes));
		}
		if (length($length) / 2 > $abcde::Atlas::settings{pascalLength}) {
			warn("String length exceeded maximum size representable by #PASCALLEN for text starting at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}!\n");
		}
		$binary = pack('H'.($abcde::Atlas::settings{pascalLength} * 2), $length).$binary;
	} # else: no further modification necessary
	if (defined($abcde::Atlas::settings{stringAlign}) && $abcde::Atlas::settings{stringAlign} > 1) {
		my $skip = ($abcde::Atlas::settings{currentInsertAddress} - $abcde::Atlas::settings{headerSize}) % $abcde::Atlas::settings{stringAlign};
		if ($skip) {
			$skip = $abcde::Atlas::settings{stringAlign} - $skip;
			seek($abcde::Atlas::SCRIPT_FILE, $skip, 1) or die("Seek failure?!");
			$abcde::Atlas::settings{currentInsertAddress} += $skip;
		} # else: no further modification necessary
	} # else: no further modification necessary
	my $newAddress = $abcde::Atlas::settings{currentInsertAddress} + length($binary);
# TBD: what if there's an AUTOCMD that does JMP when we reach maxAddress?
	if ($abcde::Atlas::settings{maxAddress} && $newAddress - 1 > $abcde::Atlas::settings{maxAddress}) {
		warn("Attempt to write beyond \$".sprintf('%X', $abcde::Atlas::settings{maxAddress})." by text starting at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}!\n");
		my $excess = $newAddress - $abcde::Atlas::settings{maxAddress} - 1;
		$abcde::Atlas::settings{excessScriptSize} += $excess;
		$binary = substr($binary, 0, -$excess);
	} else {
		$abcde::Atlas::settings{excessScriptSize} = 0;
	}
	if (%{$abcde::Atlas::settings{autoCmd}}) {
		my @autoCmds = ();
		my $futureAddress = $abcde::Atlas::settings{currentInsertAddress} + length($binary);
		foreach my $address (sort keys %{$abcde::Atlas::settings{autoCmd}}) { # sort autoCmds by address
			if ($abcde::Atlas::settings{currentInsertAddress} <= $address && $address < $futureAddress ) { # if the string we're going to write crosses an autoCmd address
				push(@autoCmds, @{$abcde::Atlas::settings{autoCmd}->{$address}}); # add all of the autoCmds for this address in the order the user listed them
			}
		}
		foreach my $autoCmd (@autoCmds) {
			my $fitLength = $autoCmd->{address} - $abcde::Atlas::settings{currentInsertAddress};
			if ($fitLength > 0) { # print as much of the string as we can before reaching the autoCmd's address
				$fitLength = ($fitLength < length($binary) ? $fitLength : length($binary)); # in case we have multiple autoCmds and an earlier one has given us more available space
				print $abcde::Atlas::SCRIPT_FILE substr($binary, 0, $fitLength);
				$abcde::Atlas::settings{currentInsertAddress} += $fitLength;
				$binary = substr($binary, $fitLength);
			}
			my $method = "do_$autoCmd->{command}";
			eval { $class->$method($autoCmd->{command}, $autoCmd->{command_args}); }; # execute the autoCmd
			if ($@) {
				die ("AUTOCMD error $@\n");
			}
			delete $abcde::Atlas::settings{autoCmd}->{$autoCmd->{address}}; # and remove it to avoid infinite loops
		}
	}

	print $abcde::Atlas::SCRIPT_FILE $binary;
	$abcde::Atlas::settings{currentInsertAddress} += length($binary);
}

sub write_text_buffer {
	my ($class) = @_;

	return unless (@abcde::Atlas::textBuffer); # no buffer = nothing to do
	die ("Attempt to write text without an active TABLE!\n") unless ($abcde::Atlas::settings{current_table});

	my $string = join('', @abcde::Atlas::textBuffer);
	if ($abcde::Atlas::settings{fixedLength} || $abcde::Atlas::settings{autoWrites}) {
		my @strings = ($string);
		if ($abcde::Atlas::settings{fixedLength}) {
			if (defined($abcde::options{artificial_end_token})) {
				# split buffer on $abcde::options{artificial_end_token} so we can calculate lengths correctly
				@strings = split(/\Q$abcde::options{artificial_end_token}\E/, $string);
			} else {
				warn("Attempt to write #FIXEDLENGTH text without an artificial end token at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}; using the entire string instead!\n");
			}
		}
		foreach my $string (@strings) {
			my $tokenList = $abcde::Atlas::settings{current_table}->text2bin(\$string);
			$class->write_string($tokenList);
		}
	} else {
		my $tokenList = $abcde::Atlas::settings{current_table}->text2bin(\$string);
		$class->write_string($tokenList);
	}
	@abcde::Atlas::textBuffer = ();
}

# from here down to EOF are all the Atlas command handlers, in alphabetical order

sub do_ACTIVETBL {
	my ($class, $command, $args) = @_;

	my ($varName) = @$args;
	if ($varName =~ s/^@//) { # $varName refers to a table id
		die("Attempt to activate non-existant table ID '$varName'!\n") unless ($abcde::tablesByID{$varName});
		$abcde::Atlas::settings{current_table} = $abcde::tablesByID{$varName};
	} else { # $varName refers to a user-defined VAR
		$class->check_var($command, $varName, ['TABLE']);
		$abcde::Atlas::settings{current_table} = $abcde::Atlas::userVars{$varName}->{value};
	}
}

sub do_ADDTBL {
	my ($class, $command, $args) = @_;

	my ($fileName, $varName) = @$args;
	$class->check_var($command, $varName, ['TABLE'], 1);
	$fileName = File::Spec->rel2abs(File::Spec->catdir($abcde::Atlas::command_file_path, $fileName));
	if ($abcde::tablesByFileName{$fileName}) { # if table was already processed from the main command line, don't re-parse it here
		$abcde::Atlas::userVars{$varName}->{value} = $abcde::tablesByFileName{$fileName}->[0];
	} else {
		my $tables = abcde::Table::Table->addTableFile($fileName);
		$abcde::Atlas::userVars{$varName}->{value} = $tables->[0]; # one table file can contain multiple logical tables, but only the first table gets tied to the Atlas variable
	}
}

sub do_AUTOCMD {
	my ($class, $command, $args) = @_;

	my $address = $class->parse_number($command, shift(@$args));
	my $line = shift(@$args);
	if ($line =~ /^[ \t]*#($commands)\(/) { # Atlas' parser actually accepts anything in place of (, but then it crashes
		my $command = $1;
		foreach my $signature (@{$syntax{$command}}) {
			if (my @command_args = $line =~ /^#$command\($signature\)$/) { # Atlas actually accepts any text following a valid command, but we'll disallow that
				$abcde::Atlas::settings{autoCmd}->{$address} ||= [];
				push(@{$abcde::Atlas::settings{autoCmd}->{$address}}, {address => $address, command => $command, command_args => \@command_args});
				return;
			}
		}
		die ("Invalid arguments to AUTOCMD command '$command'!\n");
	} else {
		die("Invalid AUTOCMD command!\n");
	}
}

sub do_AUTOEXEC {
	my ($class, $command, $args) = @_;

	warn("Extension commands such as #$command are not supported at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}; command ignored!\n");
}

sub do_AUTOWRITE {
	my ($class, $command, $args) = @_;

	my $varName = shift(@$args);
	$class->check_var($command, $varName, ['POINTERTABLE', 'POINTERLIST']);
	my $endString = shift(@$args);
	$abcde::Atlas::settings{autoWrites} ||= {};
	$abcde::Atlas::settings{autoWrites}->{$endString} ||= [];
	my $exists = 0;
	foreach my $autoWrite (@{$abcde::Atlas::settings{autoWrites}->{$endString}}) { # search for $varName
		if ($autoWrite->{varName} eq $varName) {
			$exists = 1;
			last;
		}
	}
	if ($exists) {
		warn("Duplicate #AUTOWRITE($varName, \"$endString\") ignored at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}!\n");
		return;
	}
	push(@{$abcde::Atlas::settings{autoWrites}->{$endString}}, {
		endString => $endString,
		varName => $varName,
	});
}

sub do_CALC {
	my ($class, $command, $args) = @_;

	my ($varName, $expr) = @$args;
	my $originalExpr = $expr; # keep a copy of the original expr for use in error messages
	$class->check_var($command, $varName, ['CALCVAR'], 2);
	# interpolate userVars
	while ($expr =~ m/!($identifier)/) {
		my $var = $1;
		$class->check_var($command, $var, ['CALCVAR']);
		$expr =~ s/!$var\b/${$abcde::Atlas::userVars{$var}->{value}}/g;
	}
	# convert hexadecimal to decimal
	while ($expr =~ m/(\$[0-9A-Fa-f]+)/) {
		my $var = $1;
		my $number = $class->parse_number($command, $var);
		$expr =~ s/\Q$var\E\b/$number/g;
	}
	# convert binary to decimal
	while ($expr =~ m/\%([01]+)/) {
		my $var = $1;
		my $number = oct('0b'.$var);
		$expr =~ s/\%$var\b/$number/g;
	}
	my $value = eval "$expr";
	if ($@) {
		die ("Error evaluating #CALC expression '$originalExpr'\nwhich was converted to '$expr' for processing:\n\t$@\n");
	}
	$abcde::Atlas::userVars{$varName}->{value} = \$value;
}

sub do_CONTINUOUSFILE {
	my ($class, $command, $args) = @_;

	my ($value) = @$args;
	$abcde::Atlas::settings{continuousFile} = $value;
}

sub do_CREATECTR {
	my ($class, $command, $args) = @_;

	my ($varName, $size, $value) = @$args;
	$class->check_var($command, $varName, ['COUNTER'], 1);
	$abcde::Atlas::userVars{$varName}->{value} = {
		mask => (1 << $size) - 1,
		size => $size,
		value => $value,
	};
}

sub do_CREATEPTR {
	my ($class, $command, $args) = @_;

	my ($varName, $addressType, $offset, $size) = @$args;
	$class->check_var($command, $varName, ['CUSTOMPOINTER'], 1);
	$abcde::Atlas::userVars{$varName}->{value} = {
		addressType => $addressType,
		offset => $class->parse_number($command, $offset),
		size => $size,
	};
}

sub do_DISABLE {
	my ($class, $command, $args) = @_;

	my $varName = shift(@$args);
	if ($varName =~ /^".*"$/) {
		warn("Extension commands such as #$command with EXTENSION are not supported at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}; command ignored!\n");
		return;
	}
	$class->check_var($command, $varName, ['POINTERTABLE', 'POINTERLIST']);
	my $endString = shift(@$args);
	if (!$abcde::Atlas::settings{autoWrites} || !$abcde::Atlas::settings{autoWrites}->{$endString}) {
		die("Attempt to $command #AUTOWRITE($varName, \"$endString\") which is not currently active!\n");
	}
	my @autoWrites = ();
	foreach my $autoWrite (@{$abcde::Atlas::settings{autoWrites}->{$endString}}) { # search for $varName
		next if ($autoWrite->{varName} eq $varName); # remove $varName if we find it
		push(@autoWrites, $autoWrite);
	}
	if (scalar(@autoWrites) == scalar(@{$abcde::Atlas::settings{autoWrites}->{$endString}})) { # if we didn't remove $varName, it wasn't there in the first place
		die("Attempt to $command #AUTOWRITE($varName, \"$endString\") which is not currently active!\n");
	}
	 # update autoWrites
	if (scalar(@autoWrites)) {
		$abcde::Atlas::settings{autoWrites}->{$endString} = \@autoWrites;
	} else {
		delete $abcde::Atlas::settings{autoWrites}->{$endString};
		if (!scalar(keys(%{$abcde::Atlas::settings{autoWrites}}))) {
			delete $abcde::Atlas::settings{autoWrites};
		}
	}
}

sub do_EMBPTRTBL {
	my ($class, $command, $args) = @_;

	my ($varName, $numPointers, $customPointerName) = @$args;
	$class->check_var($command, $varName, ['EMBPOINTERTABLE'], 1);
	$class->check_var($command, $customPointerName, ['CUSTOMPOINTER']);

	$abcde::Atlas::userVars{$varName}->{value} = {
		startAddress => $abcde::Atlas::settings{currentInsertAddress},
		numPointers => $class->parse_number($command, $numPointers),
		customPointer => $abcde::Atlas::userVars{$customPointerName}->{value},
		pointerIndex => 0,
	};
	$abcde::Atlas::settings{currentInsertAddress} += $abcde::Atlas::userVars{$customPointerName}->{value}->{size} / 8 * $numPointers; # reserve enough space for the embedded pointers
	seek($abcde::Atlas::SCRIPT_FILE, $abcde::Atlas::settings{currentInsertAddress}, 0);
}

sub do_EMBSET {
	my ($class, $command, $args) = @_;

	my $index = $class->parse_number($command, shift(@$args));
	if (!$abcde::Atlas::settings{embeddedPointers}) {
		die("Attempt to use #$command before EMBTYPE!\n");
	}
	$abcde::Atlas::settings{embeddedPointers}->{pointers}->[$index] ||= {%{$abcde::Atlas::settings{embeddedPointers}->{currentSettings}}}; # initialize this embedded pointer with the settings from the most recent EMBTYPE
	my $embpointer = $abcde::Atlas::settings{embeddedPointers}->{pointers}->[$index];
	$embpointer->{pointerAddress} = $abcde::Atlas::settings{currentInsertAddress};
	$abcde::Atlas::settings{currentInsertAddress} += $embpointer->{size} / 8; # reserve enough space for the embedded pointer
	seek($abcde::Atlas::SCRIPT_FILE, $abcde::Atlas::settings{currentInsertAddress}, 0);
	if ($embpointer->{pointeeAddress}) { # EMBWRITE called before EMBSET
		my $old_pointer_file = $abcde::Atlas::POINTER_FILE; # embedded pointers stay in the script file, not the pointer file
		$abcde::Atlas::POINTER_FILE = $abcde::Atlas::SCRIPT_FILE;
		# this write is unusual in that instead of writing a pointer to the current insert position, we're writing a pointer to the address specified by EMBWRITE
		$class->write_pointer($embpointer->{pointerAddress}, $embpointer->{addressType}, $embpointer->{offset}, 0, $embpointer->{size}, $embpointer->{size}, $embpointer->{pointeeAddress});
		$abcde::Atlas::POINTER_FILE = $old_pointer_file;
	}
}

sub do_EMBTYPE {
	my ($class, $command, $args) = @_;

	my ($addressType, $size, $offset) = @$args;
	$abcde::Atlas::settings{embeddedPointers}->{currentSettings} = {
		addressType => $addressType,
		offset => $class->parse_number($command, $offset),
		size => $size,
	};
	$abcde::Atlas::settings{embeddedPointers}->{pointers} ||= [];
}

sub do_EMBWRITE {
	my ($class, $command, $args) = @_;

	my $index = $class->parse_number($command, shift(@$args));
	if (!$abcde::Atlas::settings{embeddedPointers}) {
		die("Attempt to use #$command before EMBTYPE!\n");
	}
	$abcde::Atlas::settings{embeddedPointers}->{pointers}->[$index] ||= {%{$abcde::Atlas::settings{embeddedPointers}->{currentSettings}}}; # initialize this embedded pointer with the settings from the most recent EMBTYPE
	my $embpointer = $abcde::Atlas::settings{embeddedPointers}->{pointers}->[$index];
	$embpointer->{pointeeAddress} = $abcde::Atlas::settings{currentInsertAddress};
	if ($embpointer->{pointerAddress}) { # EMBSET called before EMBWRITE
		my $old_pointer_file = $abcde::Atlas::POINTER_FILE; # embedded pointers stay in the script file, not the pointer file
		$abcde::Atlas::POINTER_FILE = $abcde::Atlas::SCRIPT_FILE;
		$class->write_pointer($embpointer->{pointerAddress}, $embpointer->{addressType}, $embpointer->{offset}, 0, $embpointer->{size}, $embpointer->{size}, undef);
		$abcde::Atlas::POINTER_FILE = $old_pointer_file;
	}
}

sub do_ENDIANSWAP {
	my ($class, $command, $args) = @_;

	my ($endianSwap) = @$args;
	if ($endianSwap eq 'TRUE') {
		$abcde::Atlas::settings{endianness} = 'BIG';
	} else {
		$abcde::Atlas::settings{endianness} = 'LITTLE';
	}
}

sub do_EXECEXT {
	my ($class, $command, $args) = @_;

	my ($varName, $function) = @$args;
	$class->check_var($command, $varName, ['EXTENSION'], 1);

	warn("Extension commands such as #$command are not supported at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}; command ignored!\n");
}

sub do_FIXEDLENGTH {
	my ($class, $command, $args) = @_;

	my ($fixedLength, $fillChar) = @$args;
	$abcde::Atlas::settings{fixedLength} = $fixedLength;
	$abcde::Atlas::settings{fillChar} = chr($class->parse_number($command, $fillChar));
}

sub do_HDR {
	my ($class, $command, $args) = @_;

	my ($headerSize) = @$args;
	$abcde::Atlas::settings{headerSize} = $class->parse_number($command, $headerSize);
}

sub do_INC {
	my ($class, $command, $args) = @_;

	my ($varName, $amount) = @$args;
	$class->check_var($command, $varName, ['COUNTER']);
	$abcde::Atlas::userVars{$varName}->{value}->{value} = ($abcde::Atlas::userVars{$varName}->{value}->{value} + $class->parse_number($command, $amount)) & $abcde::Atlas::userVars{$varName}->{value}->{mask};
}

sub do_JMP {
	my ($class, $command, $args) = @_;

	# before starting a new JMP block, print some stats about the previous block, if applicable
	if (defined($abcde::Atlas::settings{maxAddress})) {
		my ($space, $negative) = ($abcde::Atlas::settings{excessScriptSize} ? ($abcde::Atlas::settings{excessScriptSize}, '-') : ($abcde::Atlas::settings{maxAddress} - $abcde::Atlas::settings{currentInsertAddress} + 1, ''));
		print STDOUT "#JMP bounded by \$".sprintf('%X', $abcde::Atlas::settings{maxAddress})." has $negative$space (\$$negative".sprintf('%X', $space).") space left.\n";
	}
	my $newAddress = shift(@$args);
	$newAddress = $class->parse_number($command, $newAddress);
	seek($abcde::Atlas::SCRIPT_FILE, $newAddress, 0) or die("Seek failure?!");
	$abcde::Atlas::settings{currentInsertAddress} = $newAddress;
	if (scalar(@$args)) {
		my $maxAddress = shift(@$args);
		$abcde::Atlas::settings{maxAddress} = $class->parse_number($command, $maxAddress);
	} else {
		$abcde::Atlas::settings{maxAddress} = undef;
	}
}

sub do_LOADEXT {
	my ($class, $command, $args) = @_;

	warn("Extension commands such as #$command are not supported at $abcde::Atlas::settings{commands_filename} line $abcde::Atlas::settings{startLine}; command ignored!\n");
}

sub do_PASCALLEN {
	my ($class, $command, $args) = @_;

	my ($pascalLength) = @$args;
	$abcde::Atlas::settings{pascalLength} = $pascalLength;
}

sub do_PASCALTYPE {
	my ($class, $command, $args) = @_;

	my ($type) = @$args;
	$abcde::Atlas::settings{pascalType} = $type;
}

sub do_PRINT {
	my ($class, $command, $args) = @_;

	my ($varName, $size) = @$args;
	$class->check_var($command, $varName, ['CALCVAR']);
	my $number = ${$abcde::Atlas::userVars{$varName}->{value}};
	my $sized = $number & ((1 << $size) - 1);
	my $string = join('', map {'<%'.$_.'>'} split(//, sprintf('%0'.$size.'b', $sized))); # oh how I hate working with binary in perl
	push(@abcde::Atlas::textBuffer, $string);
}

sub do_PTRLIST {
	my ($class, $command, $args) = @_;

	my ($varName, $fileName, $customPointerName) = @$args;
	$class->check_var($command, $varName, ['POINTERLIST'], 1);
	$class->check_var($command, $customPointerName, ['CUSTOMPOINTER']);
	my @lines = ();
	open(FH, '<:raw', $fileName) or die("Can't open $fileName for read!\n");
	while (my $line = <FH>) {
		eval { $line = $Encode->decode($line, Encode::FB_CROAK); };
		if ($@) {
			(my $err = $@) =~ s/^utf8 | at .*//gs;
			die ("Input file encoding error: $err at $fileName line ".FH->input_line_number()."!\n");
		}
		$line = Unicode::Normalize::NFD($line) if ($abcde::options{unicode_normalization});
		if (FH->input_line_number() == 1) {
			$line =~ s/^\N{U+FEFF}//; # strip out Unicode BOM if present
		}
		$line =~ s/\R//; # strip trailing newline
		next if ($line eq '');
		if ($line =~ /^$non_negative_dec_or_hex$/) {
			push(@lines, $class->parse_number($command, $line));
		} else {
			die("Invalid pointer at $fileName line ".FH->input_line_number()."!\n");
		}
	}
	close(FH);
	$abcde::Atlas::userVars{$varName}->{value} = {
		list => \@lines,
		numPointers => scalar(@lines),
		customPointer => $abcde::Atlas::userVars{$customPointerName}->{value},
		pointerIndex => 0,
	};
}

sub do_PTRTBL {
	my ($class, $command, $args) = @_;

	my ($varName, $startAddress, $offsetting, $customPointerName) = @$args;
	$class->check_var($command, $varName, ['POINTERTABLE'], 1);
	$class->check_var($command, $customPointerName, ['CUSTOMPOINTER']);

	$abcde::Atlas::userVars{$varName}->{value} = {
		startAddress => $class->parse_number($command, $startAddress),
		offsetting => $class->parse_number($command, $offsetting),
		customPointer => $abcde::Atlas::userVars{$customPointerName}->{value},
		pointerIndex => 0,
	};
}

sub do_READ {
	my ($class, $command, $args) = @_;

	my ($varName, $address) = @$args;
	$class->check_var($command, $varName, ['CALCVAR'], 2);
	$address = $class->parse_number($command, $address);
	seek($abcde::Atlas::SCRIPT_FILE, $address, 0) or die("Seek failure?!");
	my $num_chars_read = read($abcde::Atlas::SCRIPT_FILE, my $value, 1);
	die ("read failure?!") unless (defined($num_chars_read));
	die ("unable to #READ\n") unless ($num_chars_read == 1);
	seek($abcde::Atlas::SCRIPT_FILE, $abcde::Atlas::settings{currentInsertAddress}, 0) or die("Seek failure?!");
	$value = ord($value);
	$abcde::Atlas::userVars{$varName}->{value} = \$value;
}

sub do_SETPTRFILE {
	my ($class, $command, $args) = @_;

	my $fileName = shift(@$args);
	$fileName = File::Spec->rel2abs(File::Spec->catdir($abcde::Atlas::command_file_path, $fileName));
	close($abcde::Atlas::POINTER_FILE);
	open($abcde::Atlas::POINTER_FILE, '+<:raw', $fileName) || die("Can't open $fileName!\n");
}

sub do_SETTARGETFILE {
	my ($class, $command, $args) = @_;

	my $fileName = shift(@$args);
	$fileName = File::Spec->rel2abs(File::Spec->catdir($abcde::Atlas::command_file_path, $fileName));
	close($abcde::Atlas::SCRIPT_FILE);
	open($abcde::Atlas::SCRIPT_FILE, '+<:raw', $fileName) || die("Can't open $fileName!\n");
	$abcde::Atlas::settings{currentInsertAddress} = undef;
}

sub do_SKIP {
	my ($class, $command, $args) = @_;

	my $offset = shift(@$args);
	$offset = $class->parse_number($command, $offset);
	seek($abcde::Atlas::SCRIPT_FILE, $offset, 1) or die("Seek failure?!");
	$abcde::Atlas::settings{currentInsertAddress} += $offset;
}

sub do_SMA {
	my ($class, $command, $args) = @_;

	my ($addressType) = @$args;
	$abcde::Atlas::settings{addressType} = $addressType;
}

sub do_STRINGALIGN {
	my ($class, $command, $args) = @_;

	my ($stringAlign) = @$args;
	$abcde::Atlas::settings{stringAlign} = $class->parse_number($command, $stringAlign);
}

sub do_STRTYPE {
	my ($class, $command, $args) = @_;

	my ($stringType) = @$args;
	$abcde::Atlas::settings{stringType} = $stringType;
}

sub do_VAR {
	my ($class, $command, $args) = @_;

	my ($varName, $varType) = @$args;
	if ($abcde::Atlas::userVars{$varName}) {
		die("Variable '$varName' has already been declared!\n");
	}
	$abcde::Atlas::userVars{$varName} = {varType => $varType};
}

sub do_W8 {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 0, 8);
}

sub do_W16 {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 0, 16);
}

sub do_W24 {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 0, 24);
}

sub do_W32 {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 0, 32);
}

sub do_WBB {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 16, 8);
}

sub do_WHB {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 8, 8);
}

sub do_WHW {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 16, 16);
}

sub do_WLB {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 0, 8);
}

sub do_WRITE {
	my ($class, $command, $args) = @_;

	my $varName = shift(@$args);
	$class->check_var($command, $varName, ['COUNTER', 'CUSTOMPOINTER', 'POINTERTABLE', 'POINTERLIST', 'EMBPOINTERTABLE']);
	if ($abcde::Atlas::userVars{$varName}->{varType} eq 'COUNTER') {
		my $address = $class->parse_number($command, shift(@$args));
		$class->write_counter($address, $abcde::Atlas::userVars{$varName}->{value}->{value}, 0, $abcde::Atlas::userVars{$varName}->{value}->{size});
	} else {
		my ($customPointer, $pointerAddress, $obj);
		my $old_pointer_file = $abcde::Atlas::POINTER_FILE; # embedded pointers stay in the script file, not the pointer file
		if ($abcde::Atlas::userVars{$varName}->{varType} eq 'CUSTOMPOINTER') {
			$customPointer = $abcde::Atlas::userVars{$varName}->{value};
			$pointerAddress = $class->parse_number($command, shift(@$args));
		} else {
			$obj = $abcde::Atlas::userVars{$varName}->{value};
			$customPointer = $obj->{customPointer};
			if ($abcde::Atlas::userVars{$varName}->{varType} eq 'POINTERLIST') {
				if ($obj->{pointerIndex} >= $obj->{numPointers}) {
					die("Attempt to write more pointers than exist in POINTERLIST '$varName'!\n");
				}
				$pointerAddress = $obj->{list}->[$obj->{pointerIndex}];
			} elsif ($abcde::Atlas::userVars{$varName}->{varType} eq 'POINTERTABLE') {
				if (scalar(@$args)) {
					$obj->{pointerIndex} = $class->parse_number($command, shift(@$args));
				}
				$pointerAddress = $obj->{startAddress} + $obj->{offsetting} * $obj->{pointerIndex};
			} else { # EMBPOINTERTABLE
				if (scalar(@$args)) {
					$obj->{pointerIndex} = $class->parse_number($command, shift(@$args));
				}
				if ($obj->{pointerIndex} >= $obj->{numPointers}) {
					die("Attempt to write a pointer index outside the bounds of EMBPOINTERTABLE '$varName'!\n");
				}
				$pointerAddress = $obj->{startAddress} + ($customPointer->{size} / 8 + $customPointer->{offset}) * $obj->{pointerIndex};
				$abcde::Atlas::POINTER_FILE = $abcde::Atlas::SCRIPT_FILE;
			}
		}
		$class->write_pointer($pointerAddress, $customPointer->{addressType}, $customPointer->{offset}, 0, $customPointer->{size}, $customPointer->{size}, undef);
		if ($abcde::Atlas::userVars{$varName}->{varType} eq 'EMBPOINTERTABLE') {
			$abcde::Atlas::POINTER_FILE = $old_pointer_file;
		}
		if ($abcde::Atlas::userVars{$varName}->{varType} ne 'CUSTOMPOINTER') {
			$obj->{pointerIndex}++;
		}
	}
}

sub do_WUB {
	my ($class, $command, $args) = @_;

	$class->write_low_level_pointer($command, $args, 24, 8);
}

1;
