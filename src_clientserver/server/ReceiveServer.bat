@echo off
title Receive file
set file_name=File
set extension=.txt
echo Use Control+C followed by "n" to receive another file.

set timestamp=%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%
echo Waiting for a new file -^> [%file_name%%timestamp%%extension%]:
nc -l -p 55556 > %file_name%%timestamp%%extension%
echo Transfer complete.
