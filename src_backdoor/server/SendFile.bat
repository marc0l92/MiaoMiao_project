::Send a file

@echo off
title Send file
echo ##### Send file #####
echo.

:: Check if the data are passed as argument
set file_name=%1
if DEFINED file_name goto start

:: If they are not passed as argument ask for them
set /P file_name=Insert the file name to send: 

:start
:: Compute the file size
call :getFilesize %file_name%

echo File name: %file_name%
echo File size: %file_size% byte
echo.
echo Start the ReceiveFile.bat script on the client.
::Send the file size
::echo %file_size% | nc -l -p 55556
::echo File size sent.
nc -l -p 55556 < %file_name%
echo File content sent.
goto end


:getFilesize
set file_size=%~z1
exit /B


:end
::exit