setlocal enabledelayedexpansion
set folderpath=C:\temp\skits
for %%f in (%folderpath%\*.tod1rsce4) do (
  set "foldername=%%~nf"
  md "!foldername:~0,-5!" >nul 2>&1
  move "%%f" "!foldername:~0,-5!"
) 
pause