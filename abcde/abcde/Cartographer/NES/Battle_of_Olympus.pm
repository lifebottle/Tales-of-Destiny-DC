package abcde::Cartographer::NES::Battle_of_Olympus;

use strict;
use warnings;

use parent qw(abcde::Cartographer);

# This doesn't cover every Atlas command you'll need in order to get a correct insertion script, but it covers most of the extra work.
# In particular, you'll still need to set ACTIVETBL appropriately when switching between writing function calls and Pascal text,
# and depending on how you're going to arranged the Atlas script, there may be a couple of places where an EMBWRITE happens before the corresponding EMBSET and picks up incorrect EMBTYPE settings.
sub generateOutput {
	my ($class, $block, $string, $pointer_address, $embedded_pointer_num_ref) = @_;

	my @tokenList = grep {$_->{bin} ne ''} @{$string->{tokenList}}; # strip out internal tokens and only deal with what the game sees
	my $currentAddress = $string->{startAddress};
	my ($output, $embedded_pointers) = ('', []);
	$output = '//' if ($block->{'COMMENTS'} eq 'Yes');
	for (my $i = 0; $i < scalar(@tokenList); $i++) {
		my $token = $tokenList[$i];
		my $tokenText = $token->{text};
		$tokenText =~ s|\n|\n//|g if ($block->{'COMMENTS'} eq 'Yes');
		$output .= $tokenText;
		if ($token->{table} && $token->{table}->{id} && $token->{table}->{id} eq 'functions') {
			if ($token->{bin} =~ /^0000(?:0001|0010|0011|0111|1010|1011|1100)$/) { # 0x0[1237ABC]
				my $substring = abcde::String::BasicString->create();
				foreach (keys %$string) { # copy whatever settings $string had to $substring
					$substring->{$_} = $string->{$_};
				}
				if ($token->{bin} eq '00000011') { # 0x03
					# @OneBytePasclaString from 2-byte little endian address given by next 2 tokens + 0xC010
					$currentAddress += $tokenList[$i]->{binLength};
					$i++;
					$output .= $tokenList[$i]->{text}; # need to print the text so that text2bin can parse the token correctly
					my $startAddress = 0xC010 + oct('0b'.$tokenList[$i]->{bin});
					$currentAddress += $tokenList[$i]->{binLength};
					$i++;
					$output .= $tokenList[$i]->{text}; # need to print the text so that text2bin can parse the token correctly
					$startAddress += 256 * oct('0b'.$tokenList[$i]->{bin});
					$substring->{table} = $abcde::tablesByID{'OneBytePascalString'};
					$substring->{startAddress} = $startAddress * 8;
					if ($block->{'ATLAS PTRS'} eq 'Yes') {
						# replace the 2-byte address with #EMBTYPE/#EMBSET
						$output .= "\n#SKIP(-2)\n#EMBTYPE(\"LINEAR\", 16, \$0)\n#EMBSET($$embedded_pointer_num_ref)\n";
					}
				} else {
					if ($token->{bin} eq '00000001' || $token->{bin} eq '00000111' || $token->{bin} eq '00001100') { # 0x0[17C]
						# @functions from current address + # of bytes given by second next token
						$currentAddress += $tokenList[$i]->{binLength};
						$i++;
						$output .= $tokenList[$i]->{text}; # need to print the text so that text2bin can parse the token correctly
					} # else: @functions from current address + # of bytes given by next token
					$currentAddress += $tokenList[$i]->{binLength};
					$i++;
					$output .= $tokenList[$i]->{text}; # need to print the text so that text2bin can parse the token correctly
					$substring->{table} = (defined($block->{'TABLE ID'}) ? $abcde::tablesByID{$block->{'TABLE ID'}} : $abcde::tablesByFileName{$block->{'TABLE'}}->[0]);
					$substring->{startAddress} = $currentAddress + oct('0b'.$tokenList[$i]->{bin}) * 8;
					if ($block->{'ATLAS PTRS'} eq 'Yes') {
						$output .= "\n#SKIP(-1)\n#EMBTYPE(\"POINTER_RELATIVE\", 8, \$0)\n#EMBSET($$embedded_pointer_num_ref)\n";
					}
				}
				push(@$embedded_pointers, {address => $currentAddress >> 3, pointer_num => $$embedded_pointer_num_ref, string => $substring});
				$$embedded_pointer_num_ref++;
			} elsif ($token->{bin} eq '00001001') { # 0x09
				# running repeated A* searches for the right Pascal string length is a bajillion times slower than using Atlas' PASCAL commands, so just write '<Dialogue:>' as raw hex
				$output .= $abcde::rawTable->{tokensByBin}->{'00001001'}->{text}."\n#ACTIVETBL(upper)\n";
			}
		}
		$currentAddress += $token->{binLength};
	}

	return ($output, $embedded_pointers);
}

1;