::Create a screenshot of the current view and send it

@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

:: Check if the data are passed as argument
set receiver=%1
if DEFINED receiver goto start

:: If they are not passed as argument ask for them
set /P receiver=Insert the receiver IP address:

:start
echo Screenshot creation...
CmdCapture.exe /f screenshot.png > nul
echo Creation complete.
echo Image size (byte):
call FileSize.bat screenshot.png
echo Screenshot sending..
call SendClient.bat %receiver% screenshot.png
del screenshot.png
