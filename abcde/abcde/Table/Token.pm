package abcde::Table::Token;

use strict;
use warnings;

sub create {
	my ($class, $table, $flags, $bin, $numTokens, $text, $line, $lineNum) = @_;

	if (defined($text)) {
		if ($abcde::options{mode} eq 'bin2text') {
			$text =~ s/\\n/\n/g;
		} elsif ($abcde::options{mode} eq 'text2bin') {
			$text =~ s/\\n//g;
		}
	}

	$bin = (substr($bin, 0, 1) eq '%' ? substr($bin, 1) : unpack('B'.(length($bin)*4), pack('H'.length($bin), $bin))); # if $bin has a leading %, it's already in binary form, otherwise it's in hexadecimal form
	my $self = {
		bin => $bin,
		binLength => length($bin),
		flags => $flags,
		line => $line || $text,
		lineNum => $lineNum || 'N/A',
		numTokens => $numTokens,
		table => $table,
		text => $text,
		textLength => length($text),
	};

	return bless ($self, $class);
}

sub parseLine {
	my ($class, $table, $line, $lineNum) = @_;

	pos($line) = 0;
	my ($flags, $prefixes, $bin, $numTokens, $text) = ({}, '', '', 1, '');
	if ($line =~ m/\G([!\/]+)/gc) { # check for ! and /
		$prefixes = $1;
	}
	if ($prefixes =~ s/\///) {
		$flags->{isEndToken} = 1;
	}
	if ($prefixes =~ s/!//) {
		$flags->{hasSwitchToken} = 1; # the documentation refers to these as switch tokens, but the switching doesn't actually happen until the start of each parameter, so we'll name the variable to reflect that
	}
	if ($prefixes ne '') { # extra unrecognized prefixes
		die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (unrecognized prefix '$prefixes')\n");
	}
	if ($line =~ m/\G(%[01]+|[0-9A-Fa-f]+)/gc) { # binary or hex string
		$bin = $1;
	} else {
		die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (not a binary or hexadecimal string)\n");
	}
	if ($line =~ m/\G$abcde::reserved_chars->{open}(-?(?:0|[1-9][0-9]*))$abcde::reserved_chars->{close}/gc) { # <num> match count modifier
		$numTokens = $1;
	}
	die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (no '=' separator)\n") unless ($line =~ m/\G=/gc); # = separating lhs from rhs
	my $token;
	if ($flags->{hasSwitchToken}) {
		my $label = '';
		if ($line =~ m/\G$abcde::reserved_chars->{open}([^\$$abcde::reserved_chars->{open}$abcde::reserved_chars->{close}][^$abcde::reserved_chars->{open}$abcde::reserved_chars->{close}]*)$abcde::reserved_chars->{close}/gc) { # <label>
			$label = $1;
		}
		$token = $class->create($table, $flags, $bin, $numTokens, $label, $line, $lineNum);
		my @params = ();
		while ($line =~ m/\G,/gc) {
			my ($switch_table_id, $switch_count, $switchNumTokens, $addNumTokens, $switch_fallback);
			my $raw_type = 'hex';
			$switchNumTokens = 1; # default value
			if ($line =~ m/\G$abcde::reserved_chars->{open}\@([^$abcde::reserved_chars->{open}$abcde::reserved_chars->{close}]+)$abcde::reserved_chars->{close}:/gc) { # <@tableID>:
				$switch_table_id = $1;
				$abcde::tablesByID{$switch_table_id} ||= undef; # keep track of which tables we're expecting to be loaded
			} elsif ($line =~ m/\G$abcde::reserved_chars->{open}binary$abcde::reserved_chars->{close}:/gc) { # <binary>:
				$raw_type = 'bin';
			}
			# count: if matching against rawTable, %1+ => match exactly 1+ bits
			# otherwise... -1 => immediate fallback, 0 => match as much as possible, 1+ => match exactly 1+ times, $lhs => fallback when matching $lhs
			if ($line =~ m/\G(-1)/gc) {
				$switch_count = $1;
				if ($switch_table_id) {
					die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (can't have -1 fallback with table ID!)\n");
				}
			} elsif ($line =~ m/\G(0|[1-9][0-9]*)/gc) {
				$switch_count = $1;
			} elsif ($line =~ m/\G(%[01]+|\$(?:[0-9A-Fa-f]{2})+)/gc) {
				$switch_count = 0;
				($switch_fallback = $1) =~ s/^\$//;
				if ($line =~ m/\G$abcde::reserved_chars->{open}(-?(?:0|[1-9][0-9]*))$abcde::reserved_chars->{close}/gc) { # <fallback token match count modifier>
					$switchNumTokens = $1;
				}
# TBD: this should be a list of tokens
				$switch_fallback = $class->create($table, {FF => 1}, $switch_fallback, $switchNumTokens, '', $line, $lineNum); # since this type of fallback requires a binary representation, store a reference to it for later use
			} else {
				die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (invalid match type)\n");
			}
			if ($line =~ m/\G\+/gc) {
				$addNumTokens = 1;
			}
			push(@params, {paramTable => $table, table_id => $switch_table_id, requiredCount => $switch_count, addNumTokens => $addNumTokens, FFToken => $switch_fallback, rawType => $raw_type});
			last if ($switch_count eq '-1'); # immediate fallback => can't have any further switches on this token
# TBD: for dictionary entires that trigger table switches, we'll need to allow -1 in more than just the end of a switch list
		}
		if (!scalar(@params)) {
			die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (switch token with no switch parameters)\n");
		}
		$token->{params} = \@params;
	} elsif ($line =~ m/\G([^$abcde::reserved_chars->{open}$abcde::reserved_chars->{close}]*)$/gc) {
		$text = $1;
		$token = $class->create($table, $flags, $bin, $numTokens, $text, $line, $lineNum);
	}
	if ($token && pos($line) == length($line)) {
		return $token;
	} else {
		die ("unrecognized table entry '$line' at '$table->{fileName}' line $lineNum (invalid token format)\n");
	}
}

1;