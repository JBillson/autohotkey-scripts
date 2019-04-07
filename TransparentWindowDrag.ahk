;MAKE WINDOW TRANSPARENT WHEN MOVING IT

#SingleInstance, Force

#Persistent
DllCall("SetWinEventHook", Int,10, Int,11, Int,0, Ptr,RegisterCallback("onMove"), Int,0, Int,0, Int,0)
Return

onMove(hWinEventHook, event, hWnd) {
    If (event = 10) ; move started
        WinSet, Transparent, 150, ahk_id %hWnd%
    Else ; (event = 11) move ended
        WinSet, Transparent, Off, ahk_id %hWnd%
}