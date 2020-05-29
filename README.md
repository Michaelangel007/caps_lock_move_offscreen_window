I got tired of Windows constantly moving my windows off screen when turning a monitor off.
Here is an AutoHotKey script to move them back on screen so they are visible.

1. Install AutoHotKey

* https://www.autohotkey.com/download/

2. Save the following as: `caps_lock_move_window_to_mouse.ahk`

```
SetTitleMatchMode, 2 
DetectHiddenWindows, On
CoordMode,Mouse,Screen

CapsLock::
    MouseGetPos, xpos, ypos
    WinMove, A,,xpos,ypos
    return

Scrolllock::
    ExitApp
```

3. Double click on the `.ahk` file to run.
4. Use `Alt-Tab` to cycle to the window you want to move to your mouse.
5. Press `Caps Lock` to move it.
6. To exit the utility press `Scroll Lock`
