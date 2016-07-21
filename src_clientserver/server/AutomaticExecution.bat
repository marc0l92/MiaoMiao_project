::Add a key in the windows register to automatically start the program at power on

@echo off
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /d "%APPDATA%\miaomiao\Main.bat"
