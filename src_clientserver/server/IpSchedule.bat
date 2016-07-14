::Esegue l'invio dell'ip ogni 30 minuti

@echo off
:inizio

MioIP.bat | ReportIP.bat > nul
::10 minuti x 3
ping 1.1.1.1 -n 120 -w 5000 > nul
ping 1.1.1.1 -n 120 -w 5000 > nul
ping 1.1.1.1 -n 120 -w 5000 > nul
goto inizio