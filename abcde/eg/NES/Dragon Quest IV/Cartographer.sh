#!/bin/bash

if [ ! -e "Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes" ]; then
	echo "ROM file \"Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes\" not found; place one here before running this script.";
	exit 1;
fi;

perl ../../../abcde.pl -cm abcde::Cartographer "Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes" Cartographer.txt Cartographer_out -s;
