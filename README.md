I got tired of Windows (TM) constantly moving my windows off screen when turning a monitor off.
Here is an AutoHotKey script to move them back on screen so they are visible.

# Executable only

1. Download [caps_lock_move_window_to_mouse.exe](bin/caps_lock_move_window_to_mouse.exe)
2. Double click on the `caps_lock_move_window_to_mouse.exe` file to run it.
3. Use `Alt-Tab` to cycle to the window you want to move to your mouse.
4. Press `Caps Lock` to move it.
5. To exit the utility press `Scroll Lock`.  (Note: On some keyboards you might need to press `Fn`.)


# Compiling from Source

1. Install AutoHotKey (*).

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

3. Double click on the `.ahk` file to run it.
4. Use `Alt-Tab` to cycle to the window you want to move to your mouse.
5. Press `Caps Lock` to move it.
6. To exit the utility press `Scroll Lock`.  (Note: On some keyboards you might need to press `Fn`.)

(*) (I placed a mirror in `bin/` for convenience.)