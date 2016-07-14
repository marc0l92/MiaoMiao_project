::Aggiuge il programma nc.exe come programma cosentito all'accesso alla rete

@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

netsh advfirewall firewall add rule name="NetCat" dir=in action=allow program="%BAT_HOME%nc.exe" enable=yes profile=any

:: deprecato - solo XP
::netsh firewall add allowedprogram program = "%BAT_HOME%nc.exe" name = NetCat mode = ENABLE