::Rimuove tutte le modifiche fatte da questo programma al pc

@echo off
taskkill.exe /f /im nc.exe
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /f
netsh advfirewall firewall delete rule name="NetCat"
::netsh firewall delete allowedprogram NetCat
del /s /f /q "%APPDATA%\miaomiao\*.*"
rd /s /q "%APPDATA%\miaomiao"