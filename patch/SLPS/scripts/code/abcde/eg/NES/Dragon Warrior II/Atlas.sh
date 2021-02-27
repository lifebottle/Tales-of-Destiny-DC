#!/bin/sh

cp "Dragon Warrior II (U) [!].nes" Atlas.nes 2> /dev/null;
if [ "$?" != "0" ]; then
	echo "ROM file \"Dragon Warrior II (U) [!].nes\" not found; creating an empty file instead.";
	cat /dev/null > Atlas.nes;
fi

perl ../../../abcde.pl -cm abcde::Atlas Atlas.nes Atlas.txt
