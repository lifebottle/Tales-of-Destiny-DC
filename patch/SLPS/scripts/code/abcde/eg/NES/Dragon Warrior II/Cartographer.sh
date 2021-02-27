#!/bin/sh

if [ ! -e "Dragon Warrior II (U) [!].nes" ]; then
	echo "ROM file \"Dragon Warrior II (U) [!].nes\" not found; place one here before running this script.";
	exit 1;
fi;

perl ../../../abcde.pl -cm abcde::Cartographer "Dragon Warrior II (U) [!].nes" Cartographer.txt Cartographer_out -s
