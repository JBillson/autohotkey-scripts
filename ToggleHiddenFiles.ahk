#SingleInstance, Force

    ;TOGGLE HIDDEN FILES
    ^#h::        
        
        RegRead, ShowHidden_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden
        if ShowHidden_Status = 2 
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 1
        Else
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, Hidden, 2
        WinGetClass, CabinetWClass
        PostMessage, 0x111, 28931,,, A
        refreshExplorer()
        Return

    ;TOGGLE FILE EXTENSIONS
    ^#e::
        RegRead, ShowExt_Status, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt
        if ShowExt_Status = 1 
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 0
        Else
        RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, HideFileExt, 1
        WinGetClass, CabinetWClass
        PostMessage, 0x111, 28931,,, A
        refreshExplorer()
        Return


refreshExplorer()
{
    send, {F5}
}
