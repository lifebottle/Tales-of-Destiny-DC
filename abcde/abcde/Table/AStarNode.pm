package abcde::Table::AStarNode;

use strict;
use warnings;

# there are potentially infinitely many edges and vertices in our tree, so only add those that connect to the current vertex
sub discoverNodes {
	my ($self) = @_;

	my $tableStack = $self->{tableStack};
	my $curStack = $tableStack->[0];
	my $table = $curStack->{table};
	my @newNodes = ();

	# stack: table, requiredCount, currentCount, FFToken
#print STDERR "\n".__LINE__.":discoverNodes in ".(defined($table->{fileName}) ? $table->{fileName} : '[internal]').", pos $self->{pos}, paidCost $self->{paidCost}: ".($self->{token} ? ($self->{token}->{table} && defined($self->{token}->{table}->{fileName}) ? "'$self->{token}->{table}->{fileName}'" : 'N/A').".$self->{token}->{line}/'$self->{token}->{text}' [".join(',', sort keys %{$self->{token}->{flags}})."]" : "No token").", stackStr:'$self->{stackStr}'\n";
#print STDERR __LINE__."\tcoming from: ".($self->{parent} ? ($self->{parent}->{token} ? ($self->{parent}->{token}->{table} && defined($self->{parent}->{token}->{table}->{fileName}) ? "'$self->{parent}->{token}->{table}->{fileName}'" : 'N/A').".$self->{parent}->{token}->{line}/'$self->{parent}->{token}->{text}' [".join(',', sort keys %{$self->{parent}->{token}->{flags}})."]" : "No parent token") : "No parent")."\n";

	if ($table->{participatesInSwitching}) {
		# if we're trying to match a specific number of tokens and we've matched that number, the only allowable next token is FC
		# check the current stack entry first
		if ($curStack->{requiredCount} && defined($curStack->{currentCount}) && $curStack->{requiredCount} == $curStack->{currentCount}) {
			my @newStack = map {{%{$_}}} @{$tableStack};
			shift(@newStack);
			# create new Node at current pos with all but the top table on our stack and token = FC
#print STDERR __LINE__.":found FC\n";
			return [abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $abcde::internalTokens{FC})];
		}
		# for other stack entries, FC only happens if the child table is also incrementing its parent's currentCount
		foreach my $num (1..scalar(@{$tableStack}) - 1) {
			next unless ($tableStack->[$num - 1]->{addNumTokens});
			my $stack = $tableStack->[$num];
			if ($stack->{requiredCount} && defined($stack->{currentCount}) && $stack->{requiredCount} == $stack->{currentCount}) {
				my @newStack = map {{%{$_}}} @{$tableStack};
				shift(@newStack);
				# create new Node at current pos with all but the top table on our stack and token = FC
#print STDERR __LINE__.":found FC\n";
				return [abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $abcde::internalTokens{FC})];
			}
		}
		# otherwise, if we're at the beginning of a parameter in a control token with parameters, the only allowable next token is falling back (if requiredCount == -1) or switching to that parameter's table (everything else)
		if (!defined($curStack->{currentCount})) {
			my @newStack = map {{%{$_}}} @{$tableStack};
			if ($newStack[0]->{requiredCount} eq '-1') {
				if (scalar(@newStack) > 1) {
					shift(@newStack); # shift the switch to paramStack
					shift(@newStack); # shift the previous table
					# create new Node at current pos with parent table's stack and token = FI
#print STDERR __LINE__.":found -1\n";
					return [abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $abcde::internalTokens{FI})];
				}
#print STDERR __LINE__.":found invalid -1\n";
				return []; # can't pop the start table!
			} else {
				$newStack[0]->{currentCount} = 0;
				# create new Node at current pos with stack's currentCount initialized to 0 and token = S
#print STDERR __LINE__.":found switch from '$self->{token}->{table}->{fileName}' to '$table->{fileName}'\n";
				return [abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $curStack->{paramTable}->{switchTokens}->{$table})];
			}
		}

		# if we got to the current table with a forced-fallback token, also try using that token to fall back to the previous table
		if (scalar(@{$tableStack}) > 1 && $curStack->{FFToken}) {
			my @newStack = map {{%{$_}}} @{$tableStack};
			shift(@newStack);
			# in order to stay in sync with the longest-leftmost extraction algorithm, we'll need to insert the closing binary for the toggle switch
			# create new Node at current pos with all but the top table on our stack and token = forced fallback from current table to previous table
#print STDERR __LINE__.":found FF ".(defined($curStack->{FFToken}->{table}->{fileName}) ? "'$curStack->{FFToken}->{table}->{fileName}'" : 'N/A').".$curStack->{FFToken}->{line}/'$curStack->{FFToken}->{text}' [".join(',', sort keys %{$curStack->{FFToken}->{flags}})."]\n";
			push(@newNodes, abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $curStack->{FFToken}));
		}
		# whether we can match another token or not, try each control code that has no label
		foreach my $token (@{$table->{switchTokensByBin}}) {
#print STDERR __LINE__.":found ".(defined($token->{table}->{fileName}) ? "'$token->{table}->{fileName}'" : 'N/A').".$token->{line}/'$token->{text}' [".join(',', sort keys %{$token->{flags}})."], switches:[".join(',', map {($_->{table_id} // '').':'.$_->{requiredCount}} @{$token->{params}})."]\n";
			next unless ($token->{text} eq '');
			# don't consider any path that involves a cycle between real input characters, otherwise we end up searching an exponentially larger space with an extremely low probability of success
			if (($self->{tablesSincePosChange} || 0) < scalar(@abcde::allTables)) {
				next unless ($self->is_token_usable($token));
				# create new Node at current pos with our stack + new table/count and token = switch token
#print STDERR __LINE__."\tand using it!\n";
				my @newStack = map {{%{$_}}} @{$tableStack};
				$newStack[0]->{currentCount} += $token->{numTokens};
				# if the param that switched into this table indicated that sub-table matches should count towards parent table matches, also update its currentCount
				foreach my $num (0..$#newStack) {
					if ($newStack[$num + 1] && $newStack[$num]->{addNumTokens}) {
						$newStack[$num + 1]->{currentCount} += $token->{numTokens};
					} else {
						last;
					}
				}
				push(@newNodes, abcde::Table::AStarNode->create($self, $self->{pos}, [map {{%{$_}}} @{$token->{paramStack}}, @newStack], $token));
			}
		}
	}

	if (!defined($table->{tokensByPos}) || !$table->{tokensByPos}->[$self->{pos}]) {
		# determine all tokens that are capable of consuming text from the current position
#print STDERR __LINE__.":setup tokensByPos for '$table->{fileName}' at pos $self->{pos}\n";
		$table->{tokensByPos}->[$self->{pos}] = $table->getAllTextMatches($Table::text2bin_stringRef, $self->{pos});
	}
	if (substr($$Table::text2bin_stringRef, $self->{pos}, 1) eq $abcde::reserved_chars->{open} && (!defined($abcde::rawTable->{tokensByPos}) || !$abcde::rawTable->{tokensByPos}->[$self->{pos}])) {
		# determine all tokens that are capable of consuming text from the current position
#print STDERR __LINE__.":setup tokensByPos for \$abcde::rawTable at pos $self->{pos}\n";
		$abcde::rawTable->{tokensByPos}->[$self->{pos}] = $abcde::rawTable->getAllTextMatches($Table::text2bin_stringRef, $self->{pos});
	}
	# otherwise, if we are the bottom table on the stack and we can't match any tokens but $abcde::rawTable can, switch to $abcde::rawTable
	if (scalar(@{$tableStack}) == 1 && $abcde::rawTable->{tokensByPos} && $abcde::rawTable->{tokensByPos}->[$self->{pos}] && scalar(@{$abcde::rawTable->{tokensByPos}->[$self->{pos}]})) {
		my @newStack = ({table => $abcde::rawTable, requiredCount => 1, currentCount => 0, FFToken => undef}, map {{%{$_}}} @{$tableStack});
		# create new Node at new pos with our stack + new table/count
#print STDERR __LINE__.":found switch to \$abcde::rawTable\n";
		return [abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $table->{switchTokens}->{$abcde::rawTable})];
	}

	# otherwise, if we can match any input tokens in the current table, try each of them
	if (scalar(@{$table->{tokensByPos}->[$self->{pos}]})) {
		foreach my $token (@{$table->{tokensByPos}->[$self->{pos}]}) {
#print STDERR __LINE__.":found ".(defined($token->{table}->{fileName}) ? "'$token->{table}->{fileName}'" : 'N/A').".$token->{line}/'$token->{text}' [".join(',', sort keys %{$token->{flags}})."]\n";
			if ($table->{participatesInSwitching} && !$table->{allTokensHaveSameBinLength}) {
				next unless ($self->is_token_usable($token));
			}
#print STDERR __LINE__."\tand using it!\n";
			my @newStack = map {{%{$_}}} @{$tableStack};
			$newStack[0]->{currentCount} += $token->{numTokens};
			# if the param that switched into this table indicated that sub-table matches should count towards parent table matches, also update its currentCount
			foreach my $num (0..$#newStack) {
				if ($newStack[$num + 1] && $newStack[$num]->{addNumTokens}) {
					$newStack[$num + 1]->{currentCount} += $token->{numTokens};
				} else {
					last;
				}
			}
			if ($token->{params}) {
				# create new Node at new pos with parameter's stack followed by our stack + 1 token
				push(@newNodes, abcde::Table::AStarNode->create($self, $self->{pos} + $token->{textLength}, [map {{%{$_}}} @{$token->{paramStack}}, @newStack], $token));
			} elsif ($token->{flags}->{isEndToken}) {
				# encountering an end token should trigger fallback to the start table
				@newStack = \%{$tableStack->[-1]};
				my $parent = {%$self};
				$parent->{tablesSincePosChange} = 0;
				$parent->{unusableSuffixes} = {};
#print STDERR __LINE__.":found E, reset to start table\n";
				return [abcde::Table::AStarNode->create($parent, $self->{pos} + $token->{textLength}, \@newStack, $token)];
			} else {
				# create new Node at new pos with our stack + 1 token
				push(@newNodes, abcde::Table::AStarNode->create($self, $self->{pos} + $token->{textLength}, \@newStack, $token));
			}
		}
	# otherwise, if we can't match any input tokens and we're not the bottom table on the stack, try falling back to the previous table
	} elsif (scalar(@{$tableStack}) > 1) {
		my @newStack = map {{%{$_}}} @{$tableStack};
		shift(@newStack);
		if (!$self->{token}->{flags}->{S}) { # if falling back is the first thing to happen after a switch, don't push anything
			# create new Node at current pos with all but the top table on our stack and token = FB
#print STDERR __LINE__.":found FB\n";
			#push(@newNodes, abcde::Table::AStarNode->create($self, $self->{pos}, \@newStack, $abcde::internalTokens{FB}));
		} else {
#print STDERR __LINE__.":skipping FB\n";
		}
	} elsif (scalar(@{$tableStack}) <= 0) {
		die("Congratulations, somebody made a code change that broke tableStack logic! Go fix whatever it was!");
	}

	return \@newNodes;
}

sub create {
	my ($class, $parent, $pos, $stack, $token) = @_;

	my $self = {
		parent => $parent, # reference to previous Node; need this so we can retrace our path once we reach the goal
		tableStack => $stack, # arrayref containing the stack of table switch requirements (current table + any tables that the parameters of previously encountered control codes have committed us to switching to) at time of Node's creation
		pos => $pos, # string character index of last character covered by this Node's token
		token => $token, # token to be used at string character index
		paidCost => 0, # "paid cost" portion of A* cost heuristic calculation
		tablesSincePosChange => 0, # number of tables we've been to since the last pos change; used to prevent infinite loops
		stackStr => '', # scalar string for easy stack equivalency comparisons; format of each piece is "$matchTable,$requiredCount,$currentCount, $fallbackBin"
		unusableSuffixes => {}, # list of bit sequences that would concatenate with token's binary to form a different token
	};
	foreach (@$stack) {
		$self->{stackStr} .= (defined($_->{table}->{fileName}) ? $_->{table}->{fileName} : $abcde::reserved_chars->{open}.'internal'.$abcde::reserved_chars->{close}).','.$_->{requiredCount}.','
			. (defined($_->{currentCount}) ? ($_->{requiredCount} > 0 ? $_->{currentCount} : '0') : 'undef').','
			. ($_->{FFToken} ? $_->{FFToken}->{bin} : '').':';
	}
	if ($parent && $token) {
		$self->{paidCost} = $parent->{paidCost} + $token->{binLength};
		if ($pos == $parent->{pos}) {
			$self->{tablesSincePosChange} = $parent->{tablesSincePosChange} + 1;
		}
		if ($token->{binLength}) {
			foreach my $suffix (keys(%{$self->{parent}->{unusableSuffixes}})) {
				if ($self->{token}->{bin} eq $suffix) {
					# if the current token is one of our parent's unusableSuffixes, something went very wrong upstream
					die ("Congratulations, somebody made a code change that broke the unusable suffix logic! Go fix whatever it was!");
				} elsif (substr($suffix, 0, $token->{binLength}) eq $token->{bin}) {
					# if the current token is a proper prefix of one of our parent's unusableSuffixes, add the remainder of the unusable suffix to our unusableSuffixes
					$self->{unusableSuffixes}->{substr($suffix, $token->{binLength})} = 1;
				} # else: the current token is not an unusable suffix, so we're all good
			}
		} else {
			# if we're not inserting any binary, then we simply inherit our parent's (very possibly empty) unusableSuffixes
			$self->{unusableSuffixes} = $self->{parent}->{unusableSuffixes};
		}
	}
	$self->{minCost} = $self->{paidCost} + $abcde::minBinPerText * ($Table::text2bin_stringRef_length - $pos); # A* cost heuristic

	return bless ($self, $class);
}

# the binary encoding of a sequence of text tokens will be interpreted as a different sequence of binary tokens by a longest-prefix tokenizing algorithm iff
# token A is a prefix of token B and token A is followed by a sequence of tokens C whose binary encoding is B[an..bn]
# i.e. C starts with the binary sequence that is suffixed to A to form B
#
# e.g. if we want to insert binary that tokenizes as (ABC)(D) but we have a table entry for (ABCD), our binary will be tokenized as (ABCD) instead of (ABC)(D).
# e.g. if we want to insert binary that tokenizes as (ABC)(D)(EFGH) but we have a table entry for (ABCDEF), our binary will be tokenized as (ABCDEF)(GH) (with (GH) possibly also tokenized incorrectly) instead of (ABC)(D)(EFGH).
sub is_token_usable {
	my ($self, $token) = @_;

	if ($self->{parent} && $token->{binLength}) {
		foreach my $suffix (keys(%{$self->{parent}->{unusableSuffixes}})) {
			if (substr($token->{bin}, 0, length($suffix)) eq $suffix) {
				# if one of our parent's unusableSuffixes is prefix of $token's binary, then $token is unusable
				return 0;
			} # else: $token's binary is not an unusable suffix (though it may still be a proper prefix of an unusable suffix, in which case we can't determine usability until we see the next token(s)), so we're all good for now
		}
	} # else: either our parent is root or we're not inserting any binary; either way, $token is usable

	return 1;
}


1;
