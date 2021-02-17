@copy /Y "Dragon Warrior II (U) [!].nes" Atlas.nes > nul
@if errorlevel 1 (
	echo ROM file \"Dragon Warrior II (U) [!].nes\" not found; creating an empty file instead.
	@echo > nul 2> Atlas.nes
)

perl ..\..\..\abcde.pl -cm abcde::Atlas Atlas.nes Atlas.txt

pause