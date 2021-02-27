package abcde::String::BasicString;

use strict;
use warnings;

sub create {
	my ($class, $table) = @_;

	my $self = {
		table => $table,
		startAddress => 0,
	};
	bless ($self, $class);

	return $self;
}

# parse input
# the default behaviour is to translate everything; override in child classes for strings with different behaviour (e.g. end tokens, fixed-length, data that shouldn't be translated, etc.)
sub parse {
	my ($self) = @_;

	if ($abcde::options{mode} eq 'bin2text') {
		my $startAddress = $self->{startAddress};
		my %options = (
			autoJumps => $self->{autoJumps} || [],
			endTokenTerminated => ($self->{endTokenTerminated} ? 1 : 0),
			endAddress => $self->{endAddress},
			stringEndReAlignMultiple => $self->{stringEndReAlignMultiple},
			stringEndReAlignOffset => $self->{stringEndReAlignOffset},
		);
		if (defined($self->{stringsPerPointer}) && $self->{stringsPerPointer} > 1) {
			$self->{tokenList} = ();
			foreach (1..$self->{stringsPerPointer}) {
				(my $tokens, $startAddress) = $self->{table}->bin2text(\$abcde::data, $startAddress, \%options);
				push(@{$self->{tokenList}}, @$tokens);
			}
		} else {
			($self->{tokenList}, $startAddress) = $self->{table}->bin2text(\$abcde::data, $startAddress, \%options);
		}
		$self->{realEndAddress} = $startAddress;
	} else {
		$self->{tokenList} = $self->{table}->text2bin(\$abcde::data);
	}
}

sub output {
	my ($self, $tokenList) = @_;

	my $output = ($abcde::options{group} ? "line\ttable\tflags\n" : '');

	$tokenList ||= $self->{tokenList} || [];
	for (my $i = 0; $i < scalar(@$tokenList); $i++) {
		my $token = $tokenList->[$i];
		if ($abcde::options{group}) {
			$output .= $token->{line} || 'N/A';
			$output .= "\t".($token->{table} && defined($token->{table}->{fileName}) ? $token->{table}->{fileName} : $abcde::reserved_chars->{open}.'internal'.$abcde::reserved_chars->{close});
			$output .= "\t".(scalar(keys %{$token->{flags}}) ? $abcde::reserved_chars->{open}.join(',', sort keys %{$token->{flags}}).$abcde::reserved_chars->{close} : '')."\n";
		} elsif ($abcde::options{mode} eq 'text2bin') {
			$output .= $token->{bin};
		} else {
			$output .= $token->{text};
		}
		if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
			$abcde::stats{totalBits} += length($token->{bin});
			$abcde::stats{totalChars} += length($token->{text});
			$abcde::stats{totalTokens} += 1;
		}
	}
	if ($abcde::options{printStats}) { # no point collecting stats we aren't going to use
		$abcde::stats{totalStrings} += 1;
	}

	return $output;
}

1;