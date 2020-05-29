; https://www.autohotkey.com/docs/commands/SetTitleMatchMode.htm
; https://www.autohotkey.com/docs/commands/DetectHiddenWindows.htm
; https://www.autohotkey.com/docs/commands/CoordMode.htm
SetTitleMatchMode, 2     ; 2 = A window's title can contain WinTitle anywhere inside it to be a match.
DetectHiddenWindows, On  ; Default is Off
CoordMode,Mouse,Screen   ; CoordMode, TargetType , RelativeTo

CapsLock::
    MouseGetPos, xpos, ypos
    WinMove, A,,xpos,ypos
    return

Scrolllock::
    ExitApp
