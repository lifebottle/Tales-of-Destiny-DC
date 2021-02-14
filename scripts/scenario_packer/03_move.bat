setlocal enabledelayedexpansion
set folderpath=C:\temp\scenarios
for %%f in (%folderpath%\*.rsce) do (
  set "foldername=%%~nf"
  md "!foldername:~0,-3!" >nul 2>&1
  move "%%f" "!foldername:~0,-3!"
) 
pause