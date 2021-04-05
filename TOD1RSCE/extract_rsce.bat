REM Extracts all RSCE files in the current folder into a TXT file
for %%i in (*.rsce) do sceWork.exe -e "%%i"
pause