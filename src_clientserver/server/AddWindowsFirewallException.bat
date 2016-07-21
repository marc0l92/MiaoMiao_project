::Allow nc.exe program to access to the network

@echo off
set BAT_HOME=%~dp0
cd %BAT_HOME%

netsh advfirewall firewall add rule name="NetCat" dir=in action=allow program="%BAT_HOME%nc.exe" enable=yes profile=any

:: Deprecated - Windows XP only
::netsh firewall add allowedprogram program = "%BAT_HOME%nc.exe" name = NetCat mode = ENABLE
