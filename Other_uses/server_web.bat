@echo off
title Server web

nc -w 1 -l -p 8081 < page.html 
exit
