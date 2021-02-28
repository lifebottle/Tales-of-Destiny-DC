package abcde::Cartographer;

use strict;
use warnings;

use Encode ();
use List::Util ();
use Unicode::Normalize ();

use abcde::String::BasicString;

my $usage = "Cartographer Module Usage: perl $0 <general options> -cm abcde::Cartographer ROM.ext Command.txt Output.txt -s/-m";

sub printHelp {
	my ($class) = @_;

	print <<DONE;
$usage

See Cartographer's documentation (included for your convenience under abcde's docs/Cartographer directory; Cartographer
itself is available via e.g. http://www.romhacking.net/utilities/647/) for a description of its command file format.

This module provides support for Cartographer command files, with some caveats.
Any valid Cartographer command file should be valid here too, but our command file parsing rules, order of execution,
and final output are subtly different from Cartographer's.
The salient differences are as follows:
- Cartographer generally requires the commands within each block to be in a certain predefined (but unspecified) order
	but will accept certain commands out-of-order.
-- Instead, we accept commands in any order (except that each block must still end with an "#END BLOCK" command).
- Cartographer handles repeated commands inconsistently, with new commands sometimes overriding old commands, sometimes
	not.
-- Instead, we throw an error except on #SUB TABLE, which is a file-level command allowed to appear multiple times.
- Cartographer assumes relative paths inside the command file (i.e. #TABLE) are anchored at the user's current
	directory.
-- Instead, we assume relative paths inside the command file are anchored at the directory containing the command file.
- Cartographer dumps each block immediately after parsing it.
-- Instead, we don't dump anything until after the entire command file and all referenced table files have been
	validated.
- Several of Cartographer's commands appear to be broken in various ways, including #METHOD: POINTER_RELATIVE_PC and
	pretty much everything related to fixed-width strings.
-- Where possible, we attempt to make these commands work as they appear to have been intended to work rather than as
	they actually (don't) work.
-- In the case of the #METHOD: POINTER_RELATIVE_PC command, we use the #BASE POINTER: command as in
	#METHOD: POINTER_RELATIVE instead of the #RELATIVE PC: and/or #RELATIVE BASE: commands from Cartographer's
	(inconsistent) documentation.
-- In the case of the #TYPE: FIXED_STRING and #TYPE: FIXED_STRING && FIXED_LINE commands, if a STRING LENGTH (for 
	FIXED_STRING) or LINE LENGTH (for FIXED_STRING && FIXED_LINE) boundary is reached partway through a multi-byte
	token, Cartographer will dump the entire multi-byte token instead of only the bytes requested and then continue
	(assuming it does continue) dumping starting from the STRING/LINE LENGTH boundary inside the multi-byte token.
	E.g. if the STRING/LINE LENGTH boundary occurs between B and C in the token ABCD, Cartographer will dump ABCD
	and then continue with CD. In the above example, note that this means that not only are the bytes CD dumped
	twice, they are dumped with different translations. Instead, we will dump AB and then continue with CD.
-- In the case of the #TYPE: FIXED_STRING && FIXED_LINE command, it's not clear how the #STRING LENGTH: and
	#LINE LENGTH: commands are supposed to function; LINE LENGTH generally predominates, but different values for
	the #STRING LENGTH: command can result in a string being prematurely terminated or end tokens being output
	twice, once with a LINE CTRL and once with an END CTRL.
-- #STRING LENGTH now controls the total number of bytes that get dumped from the ROM, and #LINE LENGTH controls how
	those bytes get chopped into groups for output.
-- In the case of the #LINE END command, Cartographer refuses to accept a value of "No" as per its documentation; we
	do.
- Cartographer has some issues with the % character (i.e. U+0025 PERCENT SIGN) when used in the right-hand-side of a
	table entry or in the #LINE CTRL: or #END CTRL: commands which result in the % character (and sometimes the
	next few bytes/characters) not being included in its output.
- Each referenced table file must be a valid abcde table file. This may require updating older table files.
- Translating binary data into characters according to abcde's updated table file semantics may result in us generating
	different output than Cartographer.
- The #TABLE and #SUB TABLE commands are affected by abcde's -brp / --base-relative-path <path> option.

For invalid Cartographer command files, our error messaging is likely to be different from Cartographer's.

Since Cartographer was designed to work with only one table file at a time, you will need to specify any additional
table files in the <general options> rather than relying on Cartographer's #TABLE commands.
DONE
}

my $dec_or_hex = qr/^(?:-?[0-9]+|-?\$[0-9A-Fa-f]+|\$-?[0-9A-Fa-f]+)$/; # accept both -$hex and $-hex
my $non_negative_dec_or_hex = qr/^(?:[0-9]+|\$[0-9A-Fa-f]+)$/;
my $positive_dec_or_hex = qr/^(?:[0-9]*[1-9][0-9]*|\$[0-9A-Fa-f]*[1-9A-Fa-f][0-9A-Fa-f]*)$/;
my $boolean = qr/Yes|No/;
my $comments = qr/Yes|No|Both/;
my $endian = qr/BIG|LITTLE/;
my $method = qr/POINTER|POINTER_RELATIVE|POINTER_RELATIVE_PC|RAW/;
my $type = qr/NORMAL|FIXED_STRING|FIXED_STRING && FIXED_LINE/;
my %syntax = (
	'GAME NAME' => {
		value => qr/(.*)/,
		required => 1,
	},
	'BLOCK NAME' => {
		value => qr/(.*)/,
		required => 1,
	},
	'TYPE' => {
		value => qr/($type)/,
		required => 1,
		value_deps => {
			'FIXED_STRING' => {
				required => ['STRING LENGTH', 'STRING END'],
				forbidden => ['LINE LENGTH', 'LINE END'],
			},
			'FIXED_STRING && FIXED_LINE' => {
				required => ['STRING LENGTH', 'STRING END', 'LINE LENGTH', 'LINE END'],
			},
			'NORMAL' => {
				forbidden => ['STRING LENGTH', 'STRING END', 'LINE LENGTH', 'LINE END'],
			},
		},
	},
	'STRING LENGTH' => { value => qr/($positive_dec_or_hex)/, },
	'STRING END' => { value => qr/($boolean)/, },
	'END CTRL' => {
		value => qr/(.*)/,
		default => '(END)',
	},
	'LINE LENGTH' => { value => qr/($positive_dec_or_hex)/, },
	'LINE END' => { value => qr/($boolean)/, },
	'LINE CTRL' => {
		value => qr/(.*)/,
		default => '(LINE)',
	},
	'METHOD' => {
		value => qr/($method)/,
		required => 1,
		value_deps => {
			'POINTER' => {
				required => ['POINTER TABLE START', 'POINTER TABLE STOP', 'POINTER SIZE', 'POINTER SPACE', 'POINTER ENDIAN', 'ATLAS PTRS'],
				forbidden => ['BASE POINTER', 'SCRIPT START'],
			},
			'POINTER_RELATIVE' => {
				required => ['POINTER TABLE START', 'POINTER TABLE STOP', 'POINTER SIZE', 'POINTER SPACE', 'POINTER ENDIAN', 'ATLAS PTRS', 'BASE POINTER'],
				forbidden => ['SCRIPT START'],
			},
			'POINTER_RELATIVE_PC' => {
				required => ['POINTER TABLE START', 'POINTER TABLE STOP', 'POINTER SIZE', 'POINTER SPACE', 'POINTER ENDIAN', 'ATLAS PTRS', 'BASE POINTER'],
				forbidden => ['SCRIPT START'],
			},
			'RAW' => {
				required => ['SCRIPT START', 'SCRIPT STOP'],
				forbidden => ['POINTER TABLE START', 'POINTER TABLE STOP', 'POINTER SIZE', 'POINTER SPACE', 'POINTER ENDIAN', 'BASE POINTER', 'STRINGS PER POINTER'],
			},
		}
	},
	'POINTER ENDIAN' => { value => qr/($endian)/, },
	'POINTER TABLE START' => { value => qr/($non_negative_dec_or_hex)/, },
	'POINTER TABLE STOP' => { value => qr/($non_negative_dec_or_hex)/, },
	'POINTER SIZE' => { value => qr/($positive_dec_or_hex)/, },
	'POINTER SPACE' => { value => qr/($non_negative_dec_or_hex)/, },
	'ATLAS PTRS' => {
		value => qr/($boolean)/,
		default => 'No',
	},
	'BASE POINTER' => { value => qr/($dec_or_hex)/, },
	'RELATIVE PC' => { value => qr/.*/, }, # broken Cartographer command ignored by abcde
	'SCRIPT START' => { value => qr/($non_negative_dec_or_hex)/, },
	'SCRIPT STOP' => { value => qr/($non_negative_dec_or_hex)/, },
	'TABLE' => {
		value => qr/(.*)/,
		required => 1,
	},
	'COMMENTS' => {
		value => qr/($comments)/,
		required => 1,
	},
	'END BLOCK' => { value => qr//, },
	'STRINGS PER POINTER' => {
		value => qr/($non_negative_dec_or_hex)/,
		default => 1,
	},
	'STRING END REALIGN MULTIPLE' => { value => qr/($positive_dec_or_hex)/, },
	'STRING END REALIGN OFFSET' => { value => qr/($non_negative_dec_or_hex)/, },
	'AUTO JUMP START' => {
		value => qr/($non_negative_dec_or_hex)/,
		deps => ['AUTO JUMP STOP'],
	},
	'AUTO JUMP STOP' => {
		value => qr/($non_negative_dec_or_hex)/,
		deps => ['AUTO JUMP START'],
	},
	'SHOW END ADDRESS' => {
		value => qr/($boolean)/,
		default => 'Yes',
	},
	'STRINGS END AT NEXT POINTER' => {
		value => qr/($boolean)/,
		default => 'No',
	},
	'SORT OUTPUT BY STRING ADDRESS' => {
		value => qr/($boolean)/,
		default => 'No',
	},
	'SUB TABLE' => { value => qr/(.*)/, },
	'TABLE ID' => { value => qr/(.*)/, },
	'TRIM TRAILING NEWLINES' => {
		value => qr/($boolean)/,
		default => 'Yes',
	},
);
my $commands = join('|', keys %syntax);
$commands = qr/$commands/;
my $Encode = Encode::find_encoding('UTF-8');

sub updateOptions {
	# Cartographer only works one way; force this in case the correct option was not provided on the command line; issue a warning if an incorrect option was provided
	my $mode = 'bin2text';
	if (!defined($abcde::options{mode})) {
		$abcde::options{mode} = $mode;
	} elsif ($abcde::options{mode} ne $mode) {
		$abcde::options{mode} = $mode;
		warn ("Incorrect mode detected; switching to $abcde::options{mode}!\n");
	}
}

sub handleCommandFile {
	my ($class, $args) = @_;

	my ($rom_filename, $commands_filename, $output_base_filename, $output_switch) = @$args;

	if (scalar(@$args) != 4 || $output_switch !~ /^-[sm]$/) {
		die ("$usage\n");
	}

	# parse $commands_filename into blocks, set up the tables used by those blocks, read the ROM file, and then output translated data
	my %tableFileNames = ();
	my ($blocks, $info) = $class->parseCommandFile($commands_filename, \%tableFileNames);
	$class->parseTableFiles(\%tableFileNames, $commands_filename);
	$class->readInputFile($rom_filename);
	$class->processBlocks($blocks, $info, $output_base_filename, $output_switch);
}

sub parseCommandFile {
	my ($class, $commands_filename, $tableFileNames) = @_;

	my @blocks = ();
	my $block = {};
	my $info = {};
	open(my $file, '<:raw', $commands_filename) or die ("Can't open $commands_filename for read!\n");
	while (my $line = <$file>) {
		eval { $line = $Encode->decode($line, Encode::FB_CROAK); };
		if ($@) {
			(my $err = $@) =~ s/^utf8 | at .*//gs;
			die ("Input file encoding error: $err at $commands_filename line ".$file->input_line_number()."!\n");
		}
		$line = Unicode::Normalize::NFD($line) if ($abcde::options{unicode_normalization});
		if ($file->input_line_number() == 1) {
			$line =~ s/^\N{U+FEFF}//; # strip out Unicode BOM if present
		}
		$line =~ s/\R//; # strip trailing newline
		$line =~ s|\s*//.*||; # ignore comments and any preceding whitespace
		next if ($line =~ /^\s*$/);
		# Cartographer enforces a loose order to commands (e.g. can't have TABLE before SCRIPT START, but SCRIPT START can appear either before or after SCRIPT STOP); we'll be more permissive
		die ("Unrecognized line '$line' at $commands_filename line ".$file->input_line_number()." in block #".scalar(@blocks)."!\n") unless ($line =~ /^#($commands)(?::\s*(.*))?$/);
		my $command = $1;
		my $value = $2 // ''; # note that leading whitespace was not included in $2; Cartographer reports a parse error on values with trailing whitespace
		# check values, throw errors
		if ($value !~ m/$syntax{$command}->{value}/) {
			die ("Unrecognized value '$value' for command '$command' at $commands_filename line ".$file->input_line_number()." in block #".scalar(@blocks)."!\n");
		}
		# when encountering duplicate commands, Cartographer exhibits some interesting behaviour:
		# depending on the command, Cartographer may report a parse error or it may overwrite, preserve, or conditionally overwrite (e.g. FIXED_STRING overwrites NORMAL, but not the other way around) the old value
		# there's no good reason for specifying a command multiple times in the same block, so we'll throw an error to get the user to clean up their command file
		if (defined($block->{$command}) && $command ne 'SUB TABLE') {
			die ("Duplicate command '$command' ('$block->{$command}') at $commands_filename line ".$file->input_line_number()." in block #".scalar(@blocks)."!\n");
		}
		$block->{$command} = $value;
		if ($command eq 'SUB TABLE') { # this is a file-level command not part of any specific block
			$tableFileNames->{File::Spec->rel2abs(File::Spec->catdir($abcde::options{baseRelativePath}, $value))} = 1;
			next;
		} elsif ($line eq '#END BLOCK') {
			# check for missing required commands and presence of mutually-exclusive commands
			# GAME NAME for current block defaults to value of previous block
			if ($blocks[-1]) {
				$block->{$_} //= $blocks[-1]->{$_} foreach ('GAME NAME');
			}
			# check BLOCK NAME first so we can use its value in later error messages
			if (!defined($block->{'BLOCK NAME'})) {
				die ("Missing the required command 'BLOCK NAME' in block #".scalar(@blocks)."!\n");
			}
			foreach my $command (sort keys %syntax) {
				# required block commands
				die ("Missing the required command '$command' in block #".scalar(@blocks)." ($block->{'BLOCK NAME'})!\n") if ($syntax{$command}->{required} && !defined($block->{$command}));
				next unless (defined($block->{$command}));
				# required other commands based on presence of this command
				if ($syntax{$command}->{deps}) {
					foreach my $other_command (@{$syntax{$command}->{deps}}) {
						die ("When using $command, you must also include all of (".join(',', @{$syntax{$command}->{deps}}).") in block #".scalar(@blocks)." ($block->{'BLOCK NAME'})!\n") unless (defined($block->{$other_command}));
					}
				}
				if ($syntax{$command}->{value_deps} && $syntax{$command}->{value_deps}->{$block->{$command}}) {
					# required other commands based on this command's value
					foreach my $other_command (@{$syntax{$command}->{value_deps}->{$block->{$command}}->{required}}) {
						die ("Missing the required command '$other_command' for $command: $block->{$command} in block #".scalar(@blocks)." ($block->{'BLOCK NAME'})!\n") unless (defined($block->{$other_command }));
					}
					# forbidden other commands based on this command's value
					foreach my $other_command (@{$syntax{$command}->{value_deps}->{$block->{$command}}->{forbidden}}) {
						die ("The command '$other_command' is not valid for $command: $block->{$command} in block #".scalar(@blocks)." ($block->{'BLOCK NAME'})!\n") if (defined($block->{$other_command}));
					}
				}
			}
			# apply default values
			foreach my $command (sort keys %syntax) {
				if (!defined($block->{$command}) && defined($syntax{$command}->{default})) {
					$block->{$command} = $syntax{$command}->{default};
				}
			}
			if ($block->{'ATLAS PTRS'} eq 'Yes') {
				$info->{some_block_has_Atlas_pointers} = 1;
			}
			if (defined('STRING END REALIGN MULTIPLE') && !defined($block->{'STRING END REALIGN OFFSET'})) {
				$block->{'STRING END REALIGN OFFSET'} = 0;
			}
			# capture table file name
			$block->{'TABLE'} = File::Spec->rel2abs(File::Spec->catdir($abcde::options{baseRelativePath}, $block->{'TABLE'}));
			$tableFileNames->{$block->{'TABLE'}} = 1;
			# convert hexadecimal strings to decimal numbers and bytes to bits
			foreach my $command ('STRING LENGTH', 'LINE LENGTH', 'POINTER TABLE START', 'POINTER TABLE STOP', 'POINTER SIZE', 'POINTER SPACE', 'BASE POINTER', 'SCRIPT START', 'SCRIPT STOP', 'AUTO JUMP START', 'AUTO JUMP STOP', 'STRINGS PER POINTER', 'STRING END REALIGN MULTIPLE', 'STRING END REALIGN OFFSET') {
				next unless (defined($block->{$command}));
				my $negative = $block->{$command} =~ s/^(?:\$-|-\$)/\$/; # strip negative sign since hex() chokes on negative hex strings
				if ($block->{$command} =~ s/^\$//) { # strip '$'
					$block->{$command} = hex($block->{$command}); # convert hex string to decimal integer
				} # else: already is a decimal integer
				unless ($command eq 'STRINGS PER POINTER') { # STRINGS PER POINTER is a count of end tokens, not bytes
					$block->{$command} = $block->{$command} * 8; # convert byte address to bit address
				}
				if ($negative) {
					$block->{$command} *= -1; # reapply negative sign
				}
			}
			# Cartographer actually dumps each block immediately, but we'll validate all the blocks before dumping anything
			push(@blocks, $block);
			$block = {};
		}
	}
	if (!@blocks) {
		die ("No blocks to dump!\n");
	}
	if (scalar(keys(%$block))) {
		die ("The final block does not contain an 'END BLOCK' command!\n");
	}
	close($file);

	return (\@blocks, $info);
}

sub parseTableFiles {
	my ($class, $tableFileNames) = @_;

	foreach my $fileName (sort keys %$tableFileNames) {
		next if ($abcde::tablesByFileName{$fileName}); # if table was already processed from the main command line, don't re-parse it here
		abcde::Table::Table->addTableFile($fileName);
	}
	# do stuff that can't be done until we've finished parsing all of the table files
	foreach my $table_num (0..$#abcde::allTables) {
		my $table = $abcde::allTables[$table_num];
		$table->finalize();
		$table->{AtlasID} ||= 'Table_'.$table_num;
	}
}

sub readInputFile {
	my ($class, $rom_filename) = @_;

	local $/ = undef;
	open(ROM, '<', $rom_filename) || die ("Can't open $rom_filename for read!\n");
	binmode(ROM, ':raw');
	binmode(STDOUT, ':utf8');
	$abcde::data = <ROM>;
	$abcde::data = unpack('B*', $abcde::data); # mode is bin2text, so convert bytes to bits
	close(ROM);
}

sub processBlocks {
	my ($class, $blocks, $info, $output_base_filename, $output_switch) = @_;

	my $OUTPUT;
	my $embedded_pointer_num = 0;
	if ($output_switch eq '-s') { # all blocks get written to a single file
		open($OUTPUT, '>:encoding(UTF-8)', $output_base_filename.'.txt') || die ("Can't open '$output_base_filename.txt' for write!\n");
	}
	# run each block's commands
	foreach my $block_num (0..scalar(@$blocks) - 1) {
		my $start = Time::HiRes::gettimeofday();
		my $block = $blocks->[$block_num];
		if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
			$abcde::stats{blocks}->{$block->{'BLOCK NAME'}} = {
				bits => 0,
				chars => 0,
				strings => 0,
				time => 0,
				tokens => 0,
			};
		}
		print STDOUT "Dumping BLOCK [$block->{'BLOCK NAME'}]...\n";
		if (defined($block->{'TABLE ID'}) && !$abcde::tablesByID{$block->{'TABLE ID'}}) {
			die ("No such table ID '$block->{'TABLE ID'}' in block #block_num ($block->{'BLOCK NAME'})!\n");
		}
		my $formatted_block_num = sprintf('%03u', $block_num); # like Cartographer, start with a 3-digit number and expand to more digits as required
		if ($output_switch eq '-m') { # each block gets written to its own file
			open($OUTPUT, '>:encoding(UTF-8)', $output_base_filename.'_'.$formatted_block_num.'.txt') || die ("Can't open '${output_base_filename}_$formatted_block_num.txt' for write!\n");
		}
		if ($block_num == 0 || $output_switch eq '-m') {
			print $OUTPUT "//GAME NAME:\t\t".$block->{'GAME NAME'}."\n";
			if ($info->{some_block_has_Atlas_pointers}) {
				print $OUTPUT "\n// Define required TABLE variables and load the corresponding tables\n";
				foreach my $table_num (0..$#abcde::allTables) {
					my $table = $abcde::allTables[$table_num];
					print $OUTPUT "#VAR($table->{AtlasID}, TABLE)\n";
					print $OUTPUT "#ADDTBL(\"$table->{fileName}\", $table->{AtlasID})\n";
				}
			}
		}
		print $OUTPUT "\n//BLOCK #".sprintf('%03u', $block_num)." NAME:\t\t".$block->{'BLOCK NAME'};
		$block->{pointers} = [];
		if ($block->{'METHOD'} eq 'RAW') {
			# we can treat this like a pointer with only a target address
			push(@{$block->{pointers}}, {pointer_num => scalar(@{$block->{pointers}}), target => $block->{'SCRIPT START'}});
		} else { # some kind of POINTER
			my $step_size = $block->{'POINTER SIZE'} + $block->{'POINTER SPACE'};
			my $pointer_num = 0;
			# like Cartographer, POINTER TABLE STOP is actually the address *after* the pointer table stops
			# like Cartographer, POINTER TABLE STOP values are equivalent anywhere between the beginning and end of the final pointer + its spacing
			for (my $pointer_address = $block->{'POINTER TABLE START'}; $pointer_address < $block->{'POINTER TABLE STOP'}; $pointer_address += $step_size) {
				my $stringAddress_bit = substr($abcde::data, $pointer_address, $block->{'POINTER SIZE'});
				if ($block->{'POINTER ENDIAN'} eq 'LITTLE') {
					my @bytes = $stringAddress_bit =~ m/(.{8})/g;
					$stringAddress_bit = join('', reverse(@bytes));
				} # else: bytes are already in the right order
				$stringAddress_bit = oct('0b'.$stringAddress_bit) * 8; # convert from ROM's byte address to our bit address
				if ($block->{'METHOD'} eq 'POINTER_RELATIVE') {
					$stringAddress_bit += $block->{'BASE POINTER'};
				} elsif ($block->{'METHOD'} eq 'POINTER_RELATIVE_PC') {
					# Cartographer's #METHOD: POINTER_RELATIVE_PC appears to be completely broken:
					# the documentation is self-contradictory and the code appears to reject any attempt at using POINTER_RELATIVE_PC with any of the documented commands.
					# So instead we'll leverage the existing BASE POINTER command (which is maybe what RELATIVE BASE was supposed to be?)
					$stringAddress_bit += $block->{'BASE POINTER'} + $pointer_address;
				} # else: $block->{'METHOD'} eq 'POINTER' and no further address adjustments are necessary
				push(@{$block->{pointers}}, {pointer_num => scalar(@{$block->{pointers}}), address => $pointer_address >> 3, target => $stringAddress_bit});
			}
		}
		if ($block->{'SORT OUTPUT BY STRING ADDRESS'} eq 'Yes') {
			$block->{pointers} = [sort {$a->{target} cmp $b->{target}} @{$block->{pointers}}];
		}
		my @pointer_output = ();
		my ($jmp_start, $jmp_end);
		foreach my $pointer_index (0..scalar(@{$block->{pointers}})-1) {
			my $string = $class->setupString($block, $pointer_index);
			my $output = $class->extract($block, $block->{pointers}->[$pointer_index], $string, 0, \$embedded_pointer_num);
			$jmp_start //= $string->{realStartAddress};
			$jmp_end //= $string->{realEndAddress};
			$jmp_start = List::Util::min($jmp_start, $string->{startAddress});
			$jmp_end = List::Util::max($jmp_end, $string->{realEndAddress});
			$output = Unicode::Normalize::NFC($output) if ($abcde::options{unicode_normalization});
			push(@pointer_output, $output);
			if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
				$abcde::stats{blocks}->{$block->{'BLOCK NAME'}}->{strings} += 1;
			}
		}
		if ($block->{'ATLAS PTRS'} eq 'Yes') {
			my $table = (defined($block->{'TABLE ID'}) ? $abcde::tablesByID{$block->{'TABLE ID'}} : $abcde::tablesByFileName{$block->{'TABLE'}}->[0]);
			print $OUTPUT "\n#ACTIVETBL(".(defined($block->{'TABLE ID'}) ? "@".$table->{id} : $table->{AtlasID}).") // Activate this block's starting TABLE\n";
			print $OUTPUT "\n#JMP(\$".sprintf('%X', $jmp_start >> 3).", \$".sprintf('%X', ($jmp_end >> 3) - 1).") // Jump to insertion point\n";
			if (defined($block->{'BASE POINTER'})) {
				my $sign = ($block->{'BASE POINTER'} > 0 ? 1 : -1); # strip negative sign since hex() chokes on negative hex strings
				my $hdr = ($sign == -1 ? '-' : '').sprintf('%X', ($sign * $block->{'BASE POINTER'})  >> 3);
				print $OUTPUT "#HDR(\$$hdr) // Difference between ROM and RAM addresses for pointer value calculations\n";
			}
		}
		print $OUTPUT join('', @pointer_output);
		if ($output_switch eq '-m') {
			close($OUTPUT);
		}
		if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
			$abcde::stats{blocks}->{$block->{'BLOCK NAME'}}->{time} = Time::HiRes::gettimeofday() - $start;
		}
	}
}

sub setupString {
	my ($class, $block, $pointer_index) = @_;

	my $table = (defined($block->{'TABLE ID'}) ? $abcde::tablesByID{$block->{'TABLE ID'}} : $abcde::tablesByFileName{$block->{'TABLE'}}->[0]);
	my $string = abcde::String::BasicString->create($table);
	if (defined($block->{'AUTO JUMP START'})) {
		$string->{autoJumps} = [{start => $block->{'AUTO JUMP START'}, stop => $block->{'AUTO JUMP STOP'}}];
	}
	if ($block->{'STRING END REALIGN MULTIPLE'}) {
		$string->{stringEndReAlignMultiple} = $block->{'STRING END REALIGN MULTIPLE'};
		$string->{stringEndReAlignOffset} = $block->{'STRING END REALIGN OFFSET'};
	}
	if (defined($block->{'SCRIPT STOP'})) {
		$string->{endAddress} = $block->{'SCRIPT STOP'};
	}
	if (defined($block->{'SCRIPT START'})) {
		$string->{startAddress} = $block->{'SCRIPT START'};
	}
	if ($block->{'METHOD'} ne 'RAW') {
		$string->{endTokenTerminated} = 1;
		$string->{stringsPerPointer} = $block->{'STRINGS PER POINTER'};
		$string->{startAddress} = $block->{pointers}->[$pointer_index]->{target};
	}
	if ($block->{'STRINGS END AT NEXT POINTER'} eq 'Yes' && $block->{pointers} && defined($pointer_index) && $block->{pointers}->[$pointer_index + 1] && defined($block->{pointers}->[$pointer_index + 1]->{target})) {
		$string->{endTokenTerminated} = 0;
		if (defined($string->{endAddress})) {
			$string->{endAddress} = List::Util::min($string->{endAddress}, $block->{pointers}->[$pointer_index + 1]->{target});
		} else {
			$string->{endAddress} = $block->{pointers}->[$pointer_index + 1]->{target};
		}
	}
	$string->{realStartAddress} = $string->{startAddress}; # FIXED_STRING && FIXED_LINE plays games with the string's startAddress, so remember what it originally was

	return $string;
}

sub extract {
	my ($class, $block, $pointer, $string, $is_embedded_pointer, $embedded_pointer_num_ref) = @_;

	my ($output, $embedded_pointers) = ('', []);

	# header
	if ($block->{'METHOD'} eq 'RAW') {
		$output .= "\n//Block Range: \$".sprintf('%X', $block->{'SCRIPT START'} >> 3)." - \$".sprintf('%X', $block->{'SCRIPT STOP'} >> 3)."\n"; # Cartographer reports the SCRIPT START/SCRIPT STOP addresses even though that's not what it dumps :/
	} elsif ($is_embedded_pointer) {
		$output .= "\n//EMBEDDED POINTER #$pointer->{pointer_num} @ \$".sprintf('%X', $pointer->{address})." - SUB-STRING #$pointer->{pointer_num} @ \$".sprintf('%X', int($string->{startAddress} / 8))."\n";
		if ($block->{'ATLAS PTRS'} eq 'Yes') {
			$output .= "#EMBWRITE($pointer->{pointer_num})\n";
		}
	} else { # normal pointer
		$output .= "\n//POINTER #$pointer->{pointer_num} @ \$".sprintf('%X', $pointer->{address})." - STRING #$pointer->{pointer_num} @ \$".sprintf('%X', int($string->{startAddress} / 8))."\n";
		if ($block->{'ATLAS PTRS'} eq 'Yes') {
			# Atlas actually only accepts #W16, #W24, and #W32, but Cartographer will quite happily output #W8 too, so I guess we'll do the same
			$output .= "#W".$block->{'POINTER SIZE'}."(\$".sprintf('%X', $pointer->{address}).")\n";
		}
	}

	# string
	if ($block->{'TYPE'} eq 'FIXED_STRING && FIXED_LINE') {
		# loop through $abcde::data from $string->{startAddress} stepping by LINE LENGTH, translate each sub-string and optionally append LINE CTRL to each translated sub-string
		my @substrings = ();
		my $maxEndAddress = $string->{startAddress} + $block->{'STRING LENGTH'};
		while (1) {
			$string->{endAddress} = List::Util::min($string->{startAddress} + $block->{'LINE LENGTH'}, $maxEndAddress);
			$string->{endAddress} = List::Util::min($block->{'SCRIPT STOP'}, $string->{endAddress}) if (defined($block->{'SCRIPT STOP'}));
			last if ($string->{startAddress} >= $string->{endAddress});
			$string->parse();
			(my $sub_output, $embedded_pointers) = $class->generateOutput($block, $string, $pointer->{target}, $embedded_pointer_num_ref);
			push(@substrings, $sub_output);
			$string->{startAddress} = $string->{endAddress};
		}
		$output .= join(($block->{'LINE END'} eq 'Yes' ? $block->{'LINE CTRL'}."\n" : "\n"), @substrings);
	} else {
		if ($block->{'TYPE'} eq 'FIXED_STRING') {
			$string->{endAddress} = $string->{startAddress} + $block->{'STRING LENGTH'};
			$string->{endAddress} = List::Util::min($block->{'SCRIPT STOP'}, $string->{endAddress}) if (defined($block->{'SCRIPT STOP'}));
		}
		$string->parse();
		(my $sub_output, $embedded_pointers) = $class->generateOutput($block, $string, $pointer->{target}, $embedded_pointer_num_ref);
		$output .= $sub_output;
	}

	# footer
	if (($block->{'TYPE'} eq 'FIXED_STRING' || $block->{'TYPE'} eq 'FIXED_STRING && FIXED_LINE') && $block->{'STRING END'} eq 'Yes') {
		$output .= $block->{'END CTRL'}."\n\n";
	}
	$output =~ s/\n+$// if ($block->{'TRIM TRAILING NEWLINES'} eq 'Yes');
	$output .= "\n// current address: \$".sprintf('%X', $string->{realEndAddress} >> 3)."\n" if ($block->{'SHOW END ADDRESS'} eq 'Yes');

	foreach (@$embedded_pointers) {
		$output .= $class->extract($block, $_, $_->{string}, 1, $embedded_pointer_num_ref);
	}

	return $output;
}

# override this function to handle game-specific control codes with functionality that cannot be represented in a table file
sub generateOutput {
	my ($class, $block, $string, $pointer_address, $embedded_pointer_num_ref) = @_;

	my $tokenList = $string->{tokenList} || [];
	if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
		foreach my $token (@$tokenList) {
			$abcde::stats{blocks}->{$block->{'BLOCK NAME'}}->{bits} += length($token->{bin});
			$abcde::stats{blocks}->{$block->{'BLOCK NAME'}}->{chars} += length($token->{text});
			$abcde::stats{blocks}->{$block->{'BLOCK NAME'}}->{tokens} += 1;
		}
	}
	my $output = '';
	if ($block->{'COMMENTS'} eq 'Both') {
		my @strings = (''); # $tokenList might contain multiple end-token-terminated strings; if so, we want to comment and output each string individually rather than commenting and outputting all the strings together as a combined block
		foreach my $token (@$tokenList) {
			if ($abcde::options{group}) {
				$strings[-1] .= $token->{line} || 'N/A';
				$strings[-1] .= "\t".($token->{table} && defined($token->{table}->{fileName}) ? $token->{table}->{fileName} : $abcde::reserved_chars->{open}.'internal'.$abcde::reserved_chars->{close});
				$strings[-1] .= "\t".(scalar(keys %{$token->{flags}}) ? $abcde::reserved_chars->{open}.join(',', sort keys %{$token->{flags}}).$abcde::reserved_chars->{close} : '')."\n";
			} else {
				$strings[-1] .= $token->{text};
			}
			if ($token->{flags}->{isEndToken} && $token->{text} =~ /\n$/) {
				push(@strings, ''); # if we find an end token, start a new output string
			}
			# since we aren't calling $string->output(), keep track of stats like abcde::String::BasicString does
			if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
				$abcde::stats{totalBits} += length($token->{bin});
				$abcde::stats{totalChars} += length($token->{text});
				$abcde::stats{totalTokens} += 1;
			}
		}
		pop(@strings) if ($strings[-1] eq ''); # if $tokenList ended with an end token, we would have pushed a useless empty string, so pop that
		foreach my $part (@strings) {
			(my $new_output = '//'.$part);
			$new_output =~ s/\n+$//g if ($block->{'TRIM TRAILING NEWLINES'} eq 'Yes');
			$new_output =~ s/\n/\n\/\//g;
			$output .= $new_output."\n".$part;
		}
	} else {
		$output = $string->output($string->{tokenList}, $block);
		if ($block->{'COMMENTS'} eq 'Yes' && $output ne '') {
			($output = '//'.$output) =~ s|\n|\n//|g;
		}
	}
	return ($output, []);
}

1;
