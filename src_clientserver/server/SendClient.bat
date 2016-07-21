::Send a file
::
:: %1 Receiver IP address
:: %2 File name

@echo off
title Send file
echo ##### Send file #####
echo.

:: Check if the data are passed as argument
set receiver=%1
set file_name=%2
if DEFINED file_name goto start

:: If they are not passed as argument ask for them
set /P file_name=Insert the file name to send:
set /P receiver=Insert the receiver IP address:

:start
:: Compute the file size
call :getFilesize %file_name%
::echo %file_size%

echo.
echo File sending: %file_name%
echo File size: %file_size%
echo Receiver: %receiver%
::Send the file size
echo %file_size% | nc %receiver% 55556 -w 1 -vv
nc %receiver% 55556 -w 1 -vv < %file_name%
pause
exit


:getFilesize
set file_size=%~z1
exit /b
