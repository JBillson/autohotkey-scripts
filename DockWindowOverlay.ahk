; TOGGLE WINDOW TRANSPARENT ALWAYS ON TOP
; ---------------------------------------

#SingleInstance, Force

; HOTKEYS
; -------
#`::toggleTransparentWindow() ; Win + `

; SETTINGS
; --------
transparency = 150

; METHODS
; -------
toggleTransparentWindow() {

    WinGet, currentTransparency, Transparent, A
    if (currentTransparency = transparency)
    {
        WinSet, Transparent, 255, A
        WinSet, Alwaysontop, Toggle, A
    } else
    {
        WinSet, Transparent, %transparency%, A
        WinSet, Alwaysontop, Toggle, A
    }
    return
}