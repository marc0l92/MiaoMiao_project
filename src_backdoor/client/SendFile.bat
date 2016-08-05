::Send a file

@echo off
title Send file
echo ##### Send file #####
echo.

:: Check if the data are passed as argument otherwise ask for them
set file_name=%1
if DEFINED file_name goto param1
set /P file_name=Insert the file name to send: 
:param1
set server_address=%2
if DEFINED server_address goto param2
set /P file_name=Insert the server IP address: 
:param2


:start
:: Compute the file size
call :getFilesize %file_name%

echo File name: %file_name%
echo File size: %file_size% byte
echo.
echo Press any key when the script ReceiveFile.bat on the server is running.
pause > nul
::Send the file size
::echo %file_size% | nc %server_address% 55557 -w 1
::echo File size sent.
nc %server_address% 55557 -w 1 < %file_name%
echo File content sent.
goto end


:getFilesize
set file_size=%~z1
exit /B


:end
::exit