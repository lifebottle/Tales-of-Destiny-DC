for %%i in ("C:\temp\DAT\PAK1\*.pak1") do (
    if exist "%%~dpni_*d.unknown" (
        copy /y "%%~i" "C:\temp\enemies"
	move /y "%%~dpni_*d.unknown" "C:\temp\enemies"
    )
)
pause