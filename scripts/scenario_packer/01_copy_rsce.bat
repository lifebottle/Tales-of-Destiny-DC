for %%i in ("C:\temp\RSCE\*.rsce") do (
    if exist "%%~dpni.txt" (
        copy /y "%%~i" "C:\temp\scenarios"
	move /y "%%~dpni.txt" "C:\temp\scenarios"
    )
)
pause