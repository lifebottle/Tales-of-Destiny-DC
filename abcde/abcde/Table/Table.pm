package abcde::Table::Table;

use strict;
use warnings;

use Encode ();
use POSIX ();
use Unicode::Normalize ();

use abcde::Table::AStarNode;
use abcde::Table::Token;
use Hash::PriorityQueue;
use List::Util ();

sub addTableFile {
	my ($class, $fileName) = @_;

	my $tables = $class->parseTableFile($fileName);
	$abcde::tablesByFileName{$fileName} = $tables;
	foreach my $table (@$tables) {
		if (defined($table->{id})) {
			if ($abcde::tablesByID{$table->{id}}) {
				die ("duplicate table id '$table->{id}' in '$table->{fileName}'!");
			} else {
				$abcde::tablesByID{$table->{id}} = $table;
			}
		}
		push(@abcde::allTables, $table);
	}

	return $tables;
}

# Read table(s) from a file.
# Handling duplicate table IDs is the caller's responsibility!
#
# $fileName: the file name to read table(s) from
#
# Returns an array of table objects.
sub parseTableFile {
	my ($class, $fileName) = @_;

	my $table = bless ({
		fileName => $fileName,
	}, $class);

	my @tables = ($table);

	open(TABLE, '<', $fileName) || die ("can't open TABLE '$fileName'");
	while (my $line = <TABLE>) {
		$line =~ s/\R\z//; # strip newline
		if ($. == 1) {
			# strip out Unicode BOM if present
			$line =~ s/^\x{EF}\x{BB}\x{BF}//;
		}
		next if ($line eq '');
		next if (substr($line, 0, 1) eq '#'); # ignore comments
		$line = eval { Encode::decode('UTF-8', $line, 1); }; # check to see whether $line is valid UTF-8
		if ($@) {
			die ("error: $@ when reading $fileName line $.\n");
		}
		$line = Unicode::Normalize::NFD($line) if ($abcde::options{unicode_normalization});
		if ($line =~ /^@([^$abcde::reserved_chars->{open}$abcde::reserved_chars->{close}]+)$/) {
			# table id: @tableId
			my $id = $1;
			if (defined($table->{id})) {
				if ($abcde::options{allowMultipleTablesPerFile}) {
					# start a new table
					$table = bless ({
						fileName => $fileName,
						id => $id,
					}, $class);
					push(@tables, $table);
				} else {
					die ("too many table IDs at '$fileName' line $.!");
				}
			} else {
				$table->{id} = $id;
			}
		} else {
			my $token = abcde::Table::Token->parseLine($table, $line, $.);
			if (defined($table->{tokensByBin}->{$token->{bin}})) {
				# In cases like hiragana he vs. katakana he or normal kana vs. small kana, it might be useful to allow different text entries to have the same hex;
				# this idea is currently filed under "more trouble than it's worth".
				die ("duplicate binary value at '$fileName' lines $table->{tokensByBin}->{$token->{bin}}->{lineNum} and $.!");
			}
			$table->{tokensByBin}->{$token->{bin}} = $token;
			if ($token->{params}) {
				push(@{$table->{switchTokensByBin}}, $token);
			}
		}
	}
	close(TABLE);

	return \@tables;
}

sub finalize {
	my ($table) = @_;

	return if ($table->{finalized});
	$table->{participatesInSwitching} //= 0;
	if ($table->{switchTokensByBin}) {
		$table->{participatesInSwitching} = 1;
		$table->{switchTokensByBin} = [sort {$a->{bin} cmp $b->{bin}} @{$table->{switchTokensByBin}}]; # sort to encourage determinism
		foreach my $token (@{$table->{switchTokensByBin}}) {
			my @paramStack = ();
			foreach my $num (0..scalar(@{$token->{params}}) - 1) {
				my $param = $token->{params}->[$num];
				# add direct references to each parameter's table, defaulting parameters with no table ID to $abcde::rawTable
				$param->{table} = (defined($param->{table_id}) ? $abcde::tablesByID{$param->{table_id}} : ($param->{rawType} eq 'bin' ? $abcde::rawBitTable : $abcde::rawTable));
				if (!$param->{table}) {
					die ("table '$table->{fileName}' contains a control code table switch parameter to non-existant table '$param->{table_id}' (did you forget to load whatever file contains that table?)");
				}
				$param->{table}->{participatesInSwitching} = 1;
				# setup stack requirements for insertion
				push(@paramStack, {%$param});
				$table->{switchTokens}->{$param->{table}} ||= abcde::Table::Token->create($table, {S => 1}, '', 0, ''); # token for switching from this table to $param->{table}
			}
			$token->{paramStack} = \@paramStack;
		}
	}
	if ($table ne $abcde::rawTable && $table ne $abcde::rawBitTable) {
		$table->{switchTokens}->{$abcde::rawTable} ||= abcde::Table::Token->create($table, {S => 1}, '', 0, ''); # token for switching from this table to $abcde::rawTable
		$table->{rawTableSwitchToken} = abcde::Table::Token->create($table, {}, '', 0, '');
		$table->{rawTableSwitchToken}->{params} = [{table => $abcde::rawTable, requiredCount => 1}]; # the actual switch parameter
	}

	# sort by descending length so that we try matching longer left-hand sides before shorter left-hand sides
	$table->{binPat} = join('|', sort {length($b) <=> length($a)} keys %{$table->{tokensByBin}});
	$table->{binPat} = ($table->{binPat} eq '' ? qr/^$/ : qr/$table->{binPat}/);

	# determine which binary suffixes can be added to each of our tokens to turn them into one of our other tokens
	# determine maxBinLength for use in bin2text and allTokensHaveSameBinLength for use in text2bin
	$table->{maxBinLength} = 0;
	$table->{allTokensHaveSameBinLength} = 1;
	my $tableBinLength;
	my @bins = sort keys %{$table->{tokensByBin}};
	for (my $i = 0; $i <= $#bins; $i++) {
		my $token = $table->{tokensByBin}->{$bins[$i]};
		my $binLength = length($bins[$i]);
		for (my $j = 1; $j <= $#bins - $i; $j++) {
			if ($bins[$i] eq substr($bins[$i + $j], 0, $binLength)) {
				$token->{unusableSuffixes}->{substr($bins[$i + $j], $binLength)} = $table->{tokensByBin}->{$bins[$i + $j]};
			} else {
				last;
			}
		}
		if ($table->{allTokensHaveSameBinLength}) {
			$tableBinLength //= $binLength;
			if ($binLength != $tableBinLength) {
				$table->{allTokensHaveSameBinLength} = 0;
			}
		}
		$table->{maxBinLength} = List::Util::max($table->{maxBinLength}, $binLength);
		next if ($token->{text} eq '');
		push(@{$table->{tokensByFirstChar}->{substr($token->{text}, 0, 1)}}, $token);
		$abcde::minBinPerText = List::Util::min($abcde::minBinPerText, $token->{binLength} / $token->{textLength}); # A* cost heuristic factor
	}

	$table->{finalized} = 1;
}

sub getAllTextMatches {
	my ($self, $stringRef, $pos) = @_;

	my @tokenList = ();
	my $char = substr($$stringRef, $pos, 1);
	foreach my $token (@{$self->{tokensByFirstChar}->{$char}}) {
		if (substr($$stringRef, $pos, $token->{textLength}) eq $token->{text}) {
			push(@tokenList, $token);
		}
	}

	return \@tokenList;
}

# in order to save memory, all the raw bit/byte entries we use will be references to entries in this table
sub generateRawTable {
	my ($class) = @_;

	my $self = bless ({
		participatesInSwitching => 1,
	}, $class);
	foreach my $num (0..255) {
		my $token = abcde::Table::Token->create($self, {B => 1}, '%'.sprintf('%08b', $num), 1, $abcde::reserved_chars->{open}.'$'.sprintf('%02X', $num).$abcde::reserved_chars->{close});
		$self->{tokensByBin}->{$token->{bin}} = $token;
	}
	foreach my $num (0..1) {
		my $token = abcde::Table::Token->create($self, {B => 1}, "%$num", 1, $abcde::reserved_chars->{open}.'%'.$num.$abcde::reserved_chars->{close});
		$self->{tokensByBin}->{$token->{bin}} = $token;
	}

	return $self;
}

sub generateRawBitTable {
	my ($class) = @_;

	my $self = bless ({
		participatesInSwitching => 1,
	}, $class);
	foreach my $num (0..1) {
		my $token = abcde::Table::Token->create($self, {B => 1}, "%$num", 1, $abcde::reserved_chars->{open}.'%'.$num.$abcde::reserved_chars->{close});
		$self->{tokensByBin}->{$token->{bin}} = $token;
	}

	return $self;
}

# Translates a hex string to text based on the current table.
# In order to translate properly, we need to know which bits to translate and which bits to ignore.
# This function handles the most common case, where
#	1) the start address is known (usually via pointer logic)
#	2) the end address is one of
#		a) a known number of bits after the start address
#		b) a known number of tokens (either in the current table only or including sub-tables as per the table switch token's definition) after the start address
#		c) the last bit of the first end token encountered
#	3) all of the bits in between the start and end addresses are intended to be translated
#
# $binRef: reference to raw binary to translate (copying extremely large scalars like $abcde::data around has definite performance impacts!)
# $startPos: bit offset from beginning of $binRef indicating where to begin translation
# $options: hashref containing other translation configurations:
#	autoJumps: arrayref of hashrefs, where the hashrefs have keys "start" and "stop" with integer values and the arrayref is sorted by the hashrefs' "start" values; when position "start" has been read, the read position will be changed to "stop"
#	endTokenTerminated: if true, translation will stop when an end token has been read
#	endAddress: if >= 0, translation will stop when this address is reached
#	numTokens: arrayref, if any value > 0, translation will stop when that many tokens have been read
#	param: if defined, the parameter that triggered switching to this table
#	stringEndReAlignMultiple: if defined, a positive integer that will be used along with stringEndReAlignOffset to update the current read position after matching an end token
#	stringEndReAlignOffset: if defined, a positive integer that will be used along with stringEndReAlignMultiple to update the current read position after matching an end token
# $previousTable: if defined, the previous table on the stack
#
# Returns an array of tokens representing $$binRef between the calculated start and end addresses.
sub bin2text {
	my ($self, $binRef, $startPos, $options, $previousTable) = @_;

	my $curPos = $startPos;
	my @tokenList = ();
	my $endTokensSeen = 0;
	my $numTokens = $options->{numTokens} || [];

my $debug = 0;
print STDERR "bin2text in ".($self->{fileName} || $abcde::reserved_chars->{open}.'internal table'.$abcde::reserved_chars->{close})." (startPos=$startPos, endAddress=".($options->{endAddress}||'').", numTokens=".$abcde::reserved_chars->{open}.join(',', @$numTokens).$abcde::reserved_chars->{close}.", endTokenTerminated=$options->{endTokenTerminated})\n" if ($debug);
TABLE:
	while (1) {
		my $prevPos = $curPos; # remember where we started from in case we need to revert an incomplete table switch

		# figure out what string we're going to try matching against, considering potential autoJumps
		my $matchBin = '';
		my @autoJumps = ();
		if ($options->{autoJumps} && scalar(@{$options->{autoJumps}})) {
			my $matchPos = $curPos;
			my $matchLength = $self->{maxBinLength};
			foreach my $autoJump (@{$options->{autoJumps}}) {
				if ($matchPos <= $autoJump->{start} && $autoJump->{start} < $matchPos + $matchLength) {
					# in order to correctly match the next token, we're going to have to glue two sections of $$binRef together
					my $initLength = $autoJump->{start} - $matchPos;
					$matchBin .= substr($$binRef, $matchPos, $initLength);
					$matchPos = $autoJump->{stop};
					$matchLength -= $initLength;
					push(@autoJumps, $autoJump);
				}
			}
			$matchBin .= substr($$binRef, $matchPos, $matchLength);
		} else {
			die ("Attempt to read beyond end of ROM!") if ($curPos > length($$binRef));
			$matchBin = substr($$binRef, $curPos, $self->{maxBinLength} || 8); # || 8 in case table has no entries!
		}
		if (defined($options->{endAddress}) && $options->{endAddress} >= 0) {
			$matchBin = substr($matchBin, 0, $options->{endAddress} - $curPos);
		}

		if (!defined($matchBin) || $matchBin eq '') {
			# if there's nothing to match, we're all done with this table
			last;
		}

		# try to match a token against that string
		my $token;
		if (length($matchBin) && defined($options->{param}) && defined($options->{param}->{FFToken}) && $matchBin =~ m/^($options->{param}->{FFToken}->{bin})/) {
			$token = $options->{param}->{FFToken};
		} elsif (length($matchBin) && $matchBin =~ m/^($self->{binPat})/) {
			$token = $self->{tokensByBin}->{$1};
		} else {
			# couldn't match another token - either we we have reached the end of $$binRef, we have encountered an unparseable token, or we have no tokens in the first place
			if ($curPos == length($$binRef)) {
				# if we've reached the end of $$binRef, we're all done with this string
				last;
			# otherwise, it's not one of our tokens, so switch to $abcde::rawTable and continue matching there
			} else {
				warn ("unable to match another token in the current table; are you sure you really understand how the text is encoded?") if ($debug);
				$token = $self->{rawTableSwitchToken};
# TBD: unexpected raw token match should still count towards numTokens
			}
		}
		push(@tokenList, $token);

		# figure out where we ended up after crossing any autoJumps
		if (scalar(@autoJumps)) {
			my $matchLength = $token->{binLength};
			foreach my $autoJump (@autoJumps) {
				if ($curPos <= $autoJump->{start} && $autoJump->{start} < $curPos + $matchLength) {
					$matchLength -= $autoJump->{start} - $curPos; # amount of token that was consumed before jumping
					$curPos = $autoJump->{stop};
				}
			}
			$curPos += $matchLength;
		} else {
			$curPos += $token->{binLength};
		}

		# update the status of some options
		for (my $i = 0; $i < scalar(@$numTokens); $i++) {
			$numTokens->[$i] -= $token->{numTokens};
		}

		# if we matched the forced fallback token, we're all done
		if (defined($options->{param}) && defined($options->{param}->{FFToken}) && $token eq $options->{param}->{FFToken}) {
			last;
		}

		# handle any table switches
		if ($token->{params}) {
			foreach my $param (@{$token->{params}}) {
				if ($param->{requiredCount} eq '-1') {
					# fallback to previous table
					push(@tokenList, $abcde::internalTokens{FF});
					last TABLE;
				} elsif ($curPos == length($$binRef)) {
					# we're trying to switch to another table, but the string has already ended, which means the control code token is invalid
					warn("binary string ended before all control code parameters could be matched!");
					last;
				}
				# switch tables then increment pos by however many bits the sub-table matched
				my %newOptions = %$options; # most options apply to the entire string; update options that differ for the sub-table
				$newOptions{numTokens} = ($param->{addNumTokens} ? $numTokens : []),
				push(@{$newOptions{numTokens}}, $param->{requiredCount}) if ($param->{requiredCount});
				$newOptions{param} = $param;
				if ($param->{table} eq $abcde::rawTable) {
					$newOptions{endAddress} = $curPos + 8 * ($param->{requiredCount} // 1) + 1;
				} elsif ($param->{table} eq $abcde::rawBitTable) {
					$newOptions{endAddress} = $curPos + ($param->{requiredCount} // 1) + 1;
				}
				(my $subTokens, $curPos, my $subEndTokens) = $param->{table}->bin2text($binRef, $curPos, \%newOptions, $self);
				$endTokensSeen += $subEndTokens;
				push(@tokenList, $self->{switchTokens}->{$param->{table}}, @$subTokens);
			}
		} # else: nothing more to do here

		if ($options->{endTokenTerminated} && $token->{flags}->{isEndToken}) {
			$endTokensSeen++;
			if (defined($options->{stringEndReAlignMultiple}) && $options->{stringEndReAlignMultiple} > 0) {
				# re-align read position to the next multiple of $options->{stringEndReAlignMultiple} starting from $options->{stringEndReAlignOffset}
				$curPos = $options->{stringEndReAlignMultiple} * POSIX::ceil(($curPos - $options->{stringEndReAlignOffset}) / $options->{stringEndReAlignMultiple}) + ($options->{stringEndReAlignOffset}||0);
			}
		}
		if ($options->{endTokenTerminated} && $endTokensSeen) {
			# if we've reached one of the end conditions, kick all the way out, which will fall back to parent table if we're a sub table
			last;
		}
		for (my $i = 0; $i < scalar(@$numTokens); $i++) {
			if ($numTokens->[$i] == 0) {
				# push appropriate FC token
				push(@tokenList, $abcde::internalTokens{FC});
				last TABLE;
			}
		}
	}

	return (\@tokenList, $curPos, $endTokensSeen);
}

# determining end of $$stringRef is caller's responsibility
# caller is also responsible for newline stripping (newlines must be ignored for insertion purposes)
sub text2bin {
	my ($startTable, $stringRef) = @_;

	# text2bin implements an A* graph search algorithm with a couple of tweaks to avoid exploring redundant tokenizations;
	# at a high level, the algorithm looks like this:
	#
	# create priority queue
	# enqueue empty root node for ^
	# loop:
	#	curNode = dequeue lowest priority node
	#	discover accessible nodes from curNode
	#	for each accessible node newNode loop:
	#		if newNode's tokenization is equivalent (same string position + same pending table switch conditions) to any previously examined node with lower or equal cost, discard newNode
	#		else if newNode is end of string and satisfies acceptability criteria (is an end token or has no pending table switch conditions)
	#			return list of tokens by following newNode's parent pointers all the way back to root node
	#		else
	#			enqueue newNode with priority = A* cost heuristic
	#			add newNode to list of previously examined nodes
	# return error

	# some things to watch out for:
	# + infinite table switch loops
	# + need to keep track of number of tokens per table for table switch tokens requiring a specific number of tokens in the destination table
	# + need to keep track of table switch stack
	# + sequences of tokens whose concatenated binary would be interpreted as a different sequence of tokens by the (longest-leftmost) extraction algorithm, e.g. (a)(b) when table contains a token for (ab)
	# + branches that rejoin - e.g. assuming binary cost and table stack conditions are the same, tokenization (a)(bc) is equivalent to tokenization (ab)(c) and we don't want to repeat investigating paths from the end of c

	$Table::text2bin_stringRef = $stringRef;
	$Table::text2bin_stringRef_length = length($$stringRef);
	my @nodesByPos = ();
	$#nodesByPos = $Table::text2bin_stringRef_length + 1; # pre-extend array to avoid repetitive copying during automatic resizing
	foreach my $table (@abcde::allTables) {
		delete $table->{tokensByPos}; # make sure there's nothing left over from a previous invocation
	}
	delete $abcde::rawTable->{tokensByPos}; # make sure there's nothing left over from a previous invocation
	delete $abcde::rawBitTable->{tokensByPos}; # make sure there's nothing left over from a previous invocation
	my $root = abcde::Table::AStarNode->create(undef, 0, [{table => $startTable, requiredCount => 0, currentCount => 0, FFToken => undef}], undef); # ($parent, $pos, $stack, $token)
	my $activeNodes = Hash::PriorityQueue->new();
	$activeNodes->insert($root, $root->{minCost});
	my $farthestNode = $root;
	my @tokenization = ();
SEARCHING:
	while (my $node = $activeNodes->pop()) {
		my $newNodes = $node->discoverNodes();
		foreach my $newNode (@$newNodes) {
#print STDERR __LINE__.": newNode: pos:$newNode->{pos}, stackStr:'$newNode->{stackStr}', nodesByPos:".(defined($nodesByPos[$newNode->{pos}]->{$newNode->{stackStr}})).", unusableSuffixes:".scalar(keys(%{$newNode->{unusableSuffixes}}))."\n";
			next if ($nodesByPos[$newNode->{pos}]->{$newNode->{stackStr}} && scalar(keys(%{$newNode->{unusableSuffixes}})) == 0); # once we're sure that the existing tokenization is stable, skip nodes that are just equivalent tokenizations of things we've already seen
			if ($farthestNode->{pos} < $newNode->{pos}) {
				$farthestNode = $newNode;
#print STDERR "reached pos $newNode->{pos}\n";
			}
			if ($newNode->{pos} == $Table::text2bin_stringRef_length) {
				# if we have reached the end of the string and the current token is an end token or there are no unfulfilled table stack conditions, we're done
				my $unfulfilled = 0;
				foreach my $stack (@{$newNode->{tableStack}}) {
					if ($stack->{requiredCount} && (!$stack->{currentCount} || $stack->{requiredCount} > $stack->{currentCount})) {
						$unfulfilled = 1;
					}
				}

				if (!$unfulfilled || $newNode->{token}->{flags}->{isEndToken}) {
					while ($newNode->{parent}) {
						push(@tokenization, $newNode->{token});
						$newNode = $newNode->{parent};
					}
					last SEARCHING;
				}
			}
			$nodesByPos[$newNode->{pos}]->{$newNode->{stackStr}} = 1; # remember that we've seen a tokenization that reaches this pos with this stack
			$activeNodes->insert($newNode, $newNode->{minCost});
		}
	}

	if (!@tokenization) {
		#TBD: die makes us not print stats :(
		my $farthestPos = $farthestNode->{pos};
		while ($farthestNode->{parent}) {
			push(@tokenization, $farthestNode->{token});
			$farthestNode = $farthestNode->{parent};
		}
#		print STDERR join("\n", map {"(".($_->{table}->{fileName} // '').",[".join(',', sort keys %{$_->{flags}})."]:$_->{bin}/$_->{text})"} reverse(@tokenization))."\n";
		my $context = 20;
		my $start = ($farthestPos > $context ? $farthestPos - $context : 0);
		my $pre_context_length = $farthestPos - $start;
		die ("unable to tokenize; best attempt failed at input position $farthestPos at ^ indicator in\n"
		.($pre_context_length == 0 ? " " : "")
		.substr($$stringRef, $start, $pre_context_length + $context)."\n"
		.substr($$stringRef, $start, $pre_context_length)."^\n"
		."(does your table file contain a \"".substr($$stringRef, $farthestPos, 1)."\"?)\n");
	}

#print STDERR join("\n", map {"($_->{table}->{fileName},"$abcde::reserved_chars->{open}.join(',', sort keys %{$_->{flags}}).$abcde::reserved_chars->{close}":$_->{bin}/$_->{text})"} reverse(@tokenization))."\n";
	return [reverse(@tokenization)];
}


1;
