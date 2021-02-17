@if not exist "Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes" (
	echo ROM file "Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes" not found; place one here before running this script.
	@goto done
)

perl ..\..\..\abcde.pl -cm abcde::Cartographer "Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes" Cartographer.txt Cartographer_out -s

:done
@pause