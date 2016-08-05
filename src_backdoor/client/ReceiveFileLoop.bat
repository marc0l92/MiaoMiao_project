@echo off
title Receive file
set BAT_HOME=%~dp0
set file_name_prefix=File
set extension=.png

echo ##### Receive a file #####
echo.

:: Check if the data are passed as argument
set server_address=%1
if DEFINED server_address goto start

:: If they are not passed as argument ask for them
set /P server_address=Insert the IP address of the server: 

:start
  
  echo Press any key to start the file trasmission (first start the script on the server).
  pause > nul
  
  set timestamp=%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%
  echo Storing the file received in: %file_name_prefix%%timestamp%%extension%
  
  ::nc %server_address% 55556 -w 1 | set /P file_size=
  ::echo %file_size%
  
  ::start fileprogress.bat %file_name_prefix%%timestamp%%extension%
  nc %server_address% 55556 -w 1 > %file_name_prefix%%timestamp%%extension%
  echo Transfer complete.
  echo.
goto start
