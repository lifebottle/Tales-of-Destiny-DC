setlocal enabledelayedexpansion
set folderpath=C:\temp\enemies
for %%f in (%folderpath%\*_*d.unknown) do (
  set "foldername=%%~nf"
  md "!foldername:~0,-6!" >nul 2>&1
  move "%%f" "!foldername:~0,-6!"
) 
pause