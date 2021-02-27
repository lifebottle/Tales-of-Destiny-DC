@if not exist "Battle of Olympus, The (U) [!].nes" (
	echo ROM file "Battle of Olympus, The (U) [!].nes" not found; place one here before running this script.
	@goto done
)

perl ..\..\..\abcde.pl -cm abcde::Cartographer::NES::Battle_of_Olympus "Battle of Olympus, The (U) [!].nes" Cartographer.txt Cartographer_out -s

:done
@pause