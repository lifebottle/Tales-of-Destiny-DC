for %%i in ("C:\temp\TOD1RSCE4\*.tod1rsce4") do (
    if exist "%%~dpni.txt" (
        copy /y "%%~i" "C:\temp\skits"
	move /y "%%~dpni.txt" "C:\temp\skits"
    )
)
pause