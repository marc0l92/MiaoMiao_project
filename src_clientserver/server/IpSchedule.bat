::Send the IP address every 30 minutes

@echo off
:start

MyIP.bat | ReportIP.bat > nul
::10 minutes x 3
ping 1.1.1.1 -n 120 -w 5000 > nul
ping 1.1.1.1 -n 120 -w 5000 > nul
ping 1.1.1.1 -n 120 -w 5000 > nul
goto start
