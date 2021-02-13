for %%i in ("C:\temp\DAT\MGLK\*.mglk") do (
    if exist "%%~dpni_*.txt" (
        copy /y "%%~i" "C:\temp\scenarios"
	move /y "%%~dpni_*.txt" "C:\temp\scenarios"
    )
)
pause