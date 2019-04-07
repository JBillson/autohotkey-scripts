;TOGGLE WINDOW TRANSPARENT ALWAYS ON TOP 
;Win + `

#SingleInstance, Force

transparency = 150

#`::
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