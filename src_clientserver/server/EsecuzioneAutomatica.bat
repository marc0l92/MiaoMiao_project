::Aggiunge una chiave di registro per garantire l'esecuzione automatica del programma

@echo off
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v miaomiao /d "%APPDATA%\miaomiao\Main.bat"