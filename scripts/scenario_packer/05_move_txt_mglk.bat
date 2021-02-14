for %%i in ("C:\temp\scenarios\*_*.txt") do (
	move /y "%%~i" "C:\temp\DAT\MGLK"
)
pause