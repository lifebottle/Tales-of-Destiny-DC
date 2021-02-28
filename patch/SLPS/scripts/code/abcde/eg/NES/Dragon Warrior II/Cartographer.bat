@if not exist "Dragon Warrior II (U) [!].nes" (
	echo ROM file "Dragon Warrior II (U) [!].nes" not found; place one here before running this script.
	@goto done
)

perl ..\..\..\abcde.pl -cm abcde::Cartographer "Dragon Warrior II (U) [!].nes" Cartographer.txt Cartographer_out -s

:done
@pause