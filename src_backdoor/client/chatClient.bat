@echo off
title Chat client

set ip=%1
if DEFINED ip goto start
set /P ip=Insert the IP to the server chat(porta=55554):

:start
  
  echo Connecting to the chat...
  
  nc %ip% 55554 -vv
  
  echo Connection closed
  
goto start
