::Start a chat service
@echo off
title Chat server

echo Chat service started. Waiting for a client...
nc.exe -l -vv -p 55554
