;WINDOWS VOLUME CONTROL
;----------------------

#SingleInstance, Force

;FOCUSED APPLICATION CONTROL
;Ctrl + Win + Numpad

fAmount = 0.1 ;amount to increment per application volume

^#NumpadAdd::run nircmd changeappvolume focused +%fAmount%

^#NumpadSub::run nircmd changeappvolume focused -%fAmount%

^#NumpadMult::run nircmd muteappvolume focused 2


;GLOBAL VOLUME CONTROL
;Win + Numpad

gAmount = 5 ;amount to increment global volume

#NumpadMult::Send {Volume_Mute}

#NumpadSub::Send {Volume_Down %gAmount%}

#NumpadAdd::Send {Volume_Up %gAmount%}


;OPEN VOLUME MIXER
;Win + v

#v::	
	Run C:\Windows\System32\SndVol.exe
	WinWait, ahk_exe SndVol.exe
	If WinExist("ahk_exe SndVol.exe")  
	    WinActivate, ahk_exe SndVol.exe
	WinMove, ahk_exe SndVol.exe,, 10, 10, 1000       ; move window to top left of screen
	WinSet, Transparent, 150, A 					 ; make window transparent
	WinSet, Alwaysontop, On, A 					 	 ; make window always on top	
	Send, {ALT DOWN}{TAB}{ALT UP}					 ; focus on window that you were on 
	Return