@echo off
title Ricevi file
set file_name=File
set extension=.txt
echo Usa Control+C seguito da "n" per passare alla ricezione di un altro file.

set timestamp=%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%
echo In attesa di un nuovo file -^> [%file_name%%timestamp%%extension%]:
nc -l -p 55556 > %file_name%%timestamp%%extension%
echo Trasferimento completato.