@copy /Y "Battle of Olympus, The (U) [!].nes" Atlas.nes > nul
@if errorlevel 1 (
	echo ROM file \"Battle of Olympus, The (U) [!].nes\" not found; creating an empty file instead.
	@echo > nul 2> Atlas.nes
)

perl ..\..\..\abcde.pl -cm abcde::Atlas Atlas.nes Atlas.txt

pause