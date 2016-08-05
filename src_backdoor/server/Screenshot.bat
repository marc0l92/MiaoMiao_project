::Create a screenshot of the current view and send it

@echo off
set BAT_HOME=%~dp0

:start
echo Screenshot creation...
CmdCapture.exe /f screenshot.png > nul
echo Creation complete.

:: Compute the file size
::echo Image size (byte):
::call :getFilesize screenshot.png
::echo File size: %file_size% byte

echo Screenshot sending..
call SendFile.bat screenshot.png
del screenshot.png
goto end

:getFilesize
set file_size=%~z1
exit /B

:end
::exit