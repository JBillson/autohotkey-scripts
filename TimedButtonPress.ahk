; TIMED BUTTON PRESS
; ------------------

#SingleInstance, Force

; HOTKEYS
; -------
^#F8::toggleAutomaticButtonPress() ; Ctrl + Win + F8

; SETTINGS
; --------
msDelay = 1000
running := False

; METHODS
; -------
toggleAutomaticButtonPress() {
    running := !running
    while (running) {
        Send, {
            RETURN
        } 
        sleep, 1000
    }
    return
}