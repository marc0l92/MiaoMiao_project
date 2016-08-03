@echo off
title Receive file
set basepath=%~dp0
set file_name=File
set extension=.png
echo ##### Receive a file #####
echo.
:: Read the PC ip address
set ip_address_string="IPv4 address"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo IP address:%%f
echo Use Control+C and then "n" to receive another file.
echo.
echo.

:start
	set timestamp=%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%
	echo Waiting for a new file -^> [%file_name%%timestamp%%extension%]:

	%basepath%nc.exe -l -vv -p 55556 | set /P file_size=
	echo %file_size%
	pause

	::start fileprogress.bat %file_name%%timestamp%%extension%
	%basepath%nc.exe -l -vv -p 55556 > %file_name%%timestamp%%extension%
	echo Transfer complete.
goto start
