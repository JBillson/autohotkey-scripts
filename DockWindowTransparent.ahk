;TOGGLE WINDOW TRANSPARENT ALWAYS ON TOP 

transparency = 150

LWin & `::
WinGet, currentTransparency, Transparent, A
if (currentTransparency = transparency)
{
    WinSet, Transparent, 255, A
    WinSet, Alwaysontop, Toggle, A
}
else
{
    WinSet, Transparent, %transparency%, A
    WinSet, Alwaysontop, Toggle, A
}
return