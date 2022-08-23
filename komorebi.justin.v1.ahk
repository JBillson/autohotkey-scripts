#SingleInstance Force

; ================== CONFIG ===================== ;
; Enable hot reloading of changes to this file
Run, komorebic.exe watch-configuration enable, , Hide

; Configure the invisible border dimensions
;Run, komorebic.exe invisible-borders 7 0 14 7, , Hide

; Enable focus follows mouse
Run, komorebic.exe focus-follows-mouse enable, , Hide

; Ensure there are 9 workspaces created on monitor 0
Run, komorebic.exe ensure-workspaces 0 8, , Hide

; Set the padding of the different workspaces
Run, komorebic.exe workspace-padding 0 0 10, , Hide
Run, komorebic.exe container-padding 0 0 10, , Hide
Run, komorebic.exe workspace-padding 0 1 10, , Hide
Run, komorebic.exe container-padding 0 1 10, , Hide
Run, komorebic.exe workspace-padding 0 2 10, , Hide
Run, komorebic.exe container-padding 0 2 10, , Hide
Run, komorebic.exe workspace-padding 0 3 10, , Hide
Run, komorebic.exe container-padding 0 3 10, , Hide
Run, komorebic.exe workspace-padding 0 4 10, , Hide
Run, komorebic.exe container-padding 0 4 10, , Hide
Run, komorebic.exe workspace-padding 0 5 10, , Hide
Run, komorebic.exe container-padding 0 5 10, , Hide
Run, komorebic.exe workspace-padding 0 6 10, , Hide
Run, komorebic.exe container-padding 0 6 10, , Hide
Run, komorebic.exe workspace-padding 0 7 10, , Hide
Run, komorebic.exe container-padding 0 7 10, , Hide
Run, komorebic.exe workspace-padding 0 8 10, , Hide
Run, komorebic.exe container-padding 0 8 10, , Hide

; ================================================ ;

; =============== APP SPECIFIC CONTROL =================== ;
; Always show apps on the specific workspace
Run, komorebic.exe workspace-rule exe chrome.exe 0 2, , Hide
Run, komorebic.exe workspace-rule exe Discord.exe 0 3, , Hide
Run, komorebic.exe workspace-rule exe Spotify.exe 0 8, , Hide

; Always float Control Panel, matching on title
Run, komorebic.exe float-rule title "Control Panel", , Hide

; Always manage forcibly these applications that don't automatically get picked up by komorebi
;RIDER
Run, komorebic.exe manage-rule exe rider64.exe, , Hide
Run, komorebic.exe manage-rule class SunAwtFrame, , Hide
Run, komorebic.exe manage-rule class SunAwtDialog, , Hide
;ASANA
;Run, komorebic.exe manage-rul exe Asana.exe, , Hide

; Identify applications that close to the tray
Run, komorebic.exe identify-tray-application exe Discord.exe, , Hide
;Run, komorebic.exe identify-tray-application exe Asana.exe, , Hide
Run, komorebic.exe identify-tray-application exe Unity.exe, , Hide
Run, komorebic.exe identify-tray-application class SunAwtDialog, , Hide
Run, komorebic.exe identify-tray-application class SunAwtFrame, , Hide

; Identify applications that have overflowing borders
Run, komorebic.exe identify-border-overflow exe Discord.exe, , Hide

; =================================================== ;

; ================ WINDOW CONTROL =================== ;

; Change the focused window, Alt + Vim direction keys
!h::
Run, komorebic.exe focus left, , Hide
return
!j::
Run, komorebic.exe focus down, , Hide
return
!k::
Run, komorebic.exe focus up, , Hide
return
!l::
Run, komorebic.exe focus right, , Hide
return

; Move the focused window in a given direction, Alt + Shift + Vim direction keys
!+h::
Run, komorebic.exe move left, , Hide
return
!+j::
Run, komorebic.exe move down, , Hide
return
!+k::
Run, komorebic.exe move up, , Hide
return
!+l::
Run, komorebic.exe move right, , Hide
return

; Stack the focused window in a given direction, Alt + Shift + direction keys
!+Left::
Run, komorebic.exe stack left, , Hide
return
!+Down::
Run, komorebic.exe stack down, , Hide
return
!+Up::
Run, komorebic.exe stack up, , Hide
return
!+Right::
Run, komorebic.exe stack right, , Hide
return
!]::
Run, komorebic.exe cycle-stack next, , Hide
return
![::
Run, komorebic.exe cycle-stack previous, , Hide
return

; Unstack the focused window, Alt + Shift + D
!+d::
Run, komorebic.exe unstack, , Hide
return

; Promote the focused window to the top of the tree, Alt + Shift + Enter
!+Enter::
Run, komorebic.exe promote, , Hide
return

; ========================================================== ;

; ==================== TILING MODES ======================== ;
; Switch to an equal-width, max-height column layout on the main workspace, Alt + Shift + C
!+c::
Run, komorebic.exe change-layout columns, , Hide
return

; Switch to the default bsp tiling layout on the main workspace, Alt + Shift + T
!+t::
Run, komorebic.exe change-layout bsp, , Hide
return

; Toggle the Monocle layout for the focused window, Alt + Shift + F
!+f::
Run, komorebic.exe toggle-monocle, , Hide
return

; Toggle native maximize for the focused window, Alt + Shift + =
!+=::
Run, komorebic.exe toggle-maximize, , Hide
return

; Float the focused window, Alt + T
!t::
Run, komorebic.exe toggle-float, , Hide
return

; Flip horizontally, Alt + X
!x::
Run, komorebic.exe flip-layout horizontal, , Hide
return

; Flip vertically, Alt + Y
!y::
Run, komorebic.exe flip-layout vertical, , Hide
return

; ============================================================== ;

; ====================== DEBUG CONTROLS ======================== ;

; Force a retile if things get janky, Alt + Shift + R
!+r::
Run, komorebic.exe retile, , Hide
return

; Reload ~/komorebi.ahk, Alt + O
!o::
Run, komorebic.exe reload-configuration, , Hide
return

; Pause responding to any window events or komorebic commands, Alt + P
!p::
Run, komorebic.exe toggle-pause, , Hide
return

; =========================================================== ;

; ================== WORKSPACE CONTROL ====================== ;
; Switch to workspace
!1::
Send !
Run, komorebic.exe focus-workspace 0, , Hide
return
!2::
Send !
Run, komorebic.exe focus-workspace 1, , Hide
return
!3::
Send !
Run, komorebic.exe focus-workspace 2, , Hide
return
!4::
Send !
Run, komorebic.exe focus-workspace 3, , Hide
return
!5::
Send !
Run, komorebic.exe focus-workspace 4, , Hide
return
!6::
Send !
Run, komorebic.exe focus-workspace 5, , Hide
return
!7::
Send !
Run, komorebic.exe focus-workspace 6, , Hide
return
!8::
Send !
Run, komorebic.exe focus-workspace 7, , Hide
return
!9::
Send !
Run, komorebic.exe focus-workspace 8, , Hide
return

; Move window to workspace
!+1::
Run, komorebic.exe send-to-workspace 0, , Hide
return
!+2::
Run, komorebic.exe send-to-workspace 1, , Hide
return
!+3::
Run, komorebic.exe send-to-workspace 2, , Hide
return
!+4::
Run, komorebic.exe send-to-workspace 3, , Hide
return
!+5::
Run, komorebic.exe send-to-workspace 4, , Hide
return
!+6::
Run, komorebic.exe send-to-workspace 5, , Hide
return
!+7::
Run, komorebic.exe send-to-workspace 6, , Hide
return
!+8::
Run, komorebic.exe send-to-workspace 7, , Hide
return
!+9::
Run, komorebic.exe send-to-workspace 8, , Hide
return

; ========================================================== ;
