;MAKE WINDOW TRANSPARENT WHEN MOVING IT

transparency = 150

onMouseMove(hWinEventHook, event, hWnd) 
{
    static t, _ := DllCall("SetWinEventHook", Int,10, Int,11, Int,0
        , Ptr,RegisterCallback("onMove"), Int,0, Int,0, Int,0)
    If (event = 10) {
        WinGet, t, Transparent, ahk_id %hWnd%
        IfEqual, t,, WinSet, Transparent, %transparency%, ahk_id %hWnd%
    } Else WinSet, Transparent, % t?t:"off", ahk_id %hWnd%
}