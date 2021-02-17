#!/bin/bash

if [ ! -e "Battle of Olympus, The (U) [!].nes" ]; then
	echo "ROM file \"Battle of Olympus, The (U) [!].nes\" not found; place one here before running this script.";
	exit 1;
fi;

perl ../../../abcde.pl -cm abcde::Cartographer::NES::Battle_of_Olympus "Battle of Olympus, The (U) [!].nes" Cartographer.txt Cartographer_out -s
