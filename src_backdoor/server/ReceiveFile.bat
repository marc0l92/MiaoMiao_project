@echo off
title Receive file
set file_name_prefix=File
set extension=.txt

:start
:: Get timestamp
set timestamp=%date:~0,2%-%date:~3,2%-%date:~6,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%

echo Waiting for a new file to store in: %file_name_prefix%%timestamp%%extension%
nc -l -p 55557 > %file_name_prefix%%timestamp%%extension%

echo Transfer complete.
