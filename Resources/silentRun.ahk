#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon 

Run, %1%, %A_ScriptDir%, hide
ExitApp

;chiude lo script
	^q::
	OutputDebug, Chiusura forzata dello script
	ExitApp
	Return