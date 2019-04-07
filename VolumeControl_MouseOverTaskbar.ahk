#If MouseIsOver("ahk_class Shell_TrayWnd")
   WheelUp::Send {Volume_Up}
   WheelDown::Send {Volume_Down}
   ;WheelClick::Send {Volume_Mute}
   ;WheelUp::run nircmd changeappvolume focused +0.1
#If

MouseIsOver(WinTitle)
{  MouseGetPos,,, Win
   Return WinExist(WinTitle . " ahk_id " . Win)
}