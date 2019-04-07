;VOLUME CONTROL
;--------------

#SingleInstance, Force

;FOCUSED APPLICATION CONTROL
;CtrlShift (Numpad + - *)

fAmount = 0.1 ;amount to increment per application volume

^+NumpadAdd::run nircmd changeappvolume focused +%fAmount%

^+NumpadSub::run nircmd changeappvolume focused -%fAmount%

^+NumpadMult::run nircmd muteappvolume focused 2


;GLOBAL VOLUME CONTROL
;LWin (Numpad + - *)

gAmount = 5 ;amount to increment global volume

LWin & NumpadMult::Send {Volume_Mute}

LWin & NumpadSub::Send {Volume_Down %gAmount%}

LWin & NumpadAdd::Send {Volume_Up %gAmount%}