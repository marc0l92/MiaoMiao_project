@echo off
title Ricevi file
set basepath=%~dp0
set file_name=File
set extension=.png
echo ##### Ricevi un file #####
echo.
:: leggo l'ip del pc
set ip_address_string="Indirizzo IPv4"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo Indirizzo ip:%%f 
echo Usa Control+C seguito da "n" per passare alla ricezione di un altro file.
echo.
echo.

:start
	set timestamp=%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%
	echo In attesa di un nuovo file -^> [%file_name%%timestamp%%extension%]:

	::start fileprogress.bat %file_name%%timestamp%%extension%
	%basepath%nc.exe -l -vv -p 55556 > %file_name%%timestamp%%extension%
	echo Trasferimento completato.
goto start