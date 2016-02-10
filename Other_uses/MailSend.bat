@echo off
title Invia Mail
echo Invio e-mail
nc smtp.libero.it 25
echo HELO mail
echo MAIL FROM:<>
echo RCPT TO:<>
echo DATA
echo From: [Alice] <alice@geek.com>
echo To: <bob@example.com>
echo Date: Mon, 12 Apr 2010 14:21:26 -0400
echo Subject: 
echo 
echo .
echo QUIT