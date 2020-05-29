SetTitleMatchMode, 2 
DetectHiddenWindows, On
CoordMode,Mouse,Screen

CapsLock::
    MouseGetPos, xpos, ypos
    WinMove, A,,xpos,ypos
    return

Scrolllock::
    ExitApp
