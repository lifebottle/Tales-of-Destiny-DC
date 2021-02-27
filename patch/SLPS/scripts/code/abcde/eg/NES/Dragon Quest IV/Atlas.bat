@copy /Y "Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes" Atlas.nes > nul
@if errorlevel 1 (
	echo ROM file \"Dragon Quest IV - Michibikareshi Monotachi (J) (PRG1) [!].nes\" not found; creating an empty file instead.
	@echo > nul 2> Atlas.nes
)

perl ..\..\..\abcde.pl -cm abcde::Atlas Atlas.nes Atlas.txt

pause