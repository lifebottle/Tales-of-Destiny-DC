for %%i in ("C:\temp\DAT\PAK1\*.pak1") do (
    if exist "%%~dpni_0000.txt" (
        copy /y "%%~i" "C:\temp\skits"
	move /y "%%~dpni_0000.txt" "C:\temp\skits"
    )
)
pause