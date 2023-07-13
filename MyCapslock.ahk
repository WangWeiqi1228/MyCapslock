;------------------------------------------------------------------------------
;创建快捷方式---属性---高级---用管理员身份运行
;Crtl^ Alt! Shift+

;------------------------------------------------------------------------------
NumLock:: Send {esc}
Tab:: Send {Tab}
+Tab:: Send +{Tab}

;CapsLock 小写 开启NumLock
CapsLock:: 
SetCapsLockState , AlwaysOff
SetNumLockState , AlwaysOn
return

;Shift+Capslock 大写 关闭NumLock
+CapsLock::
SetCapsLockState , AlwaysOn
SetNumLockState , AlwaysOff
return

;------------------------------------------------------------------------------
;账号密码
CapsLock & 1:: Send 17768678576
CapsLock & 2:: Send wangweiqi{Numpad1}{Numpad2}{Numpad2}{Numpad8}@gmail.com{enter}
CapsLock & 3:: Send Chailinlin0129{enter}

;音量
CapsLock & e:: Send {Volume_Up 2}
CapsLock & d:: Send {Volume_Down 2}

;微信 有道词典 
CapsLock & Space:: Send ^!{w}
CapsLock & f:: Send ^!{x}

;------------------------------------------------------------------------------
;窗口切换 标签关闭
CapsLock & a:: ShiftAltTab
CapsLock & s:: AltTab
CapsLock & w:: Send ^{f4}

;------------------------------------------------------------------------------
;回车 退格
CapsLock & Tab:: Send {enter}
CapsLock & q:: Send {backspace}

;方向键
CapsLock & i:: Send {up}
CapsLock & j:: Send {left}
CapsLock & k:: Send {down}
CapsLock & l:: Send {right}
CapsLock & h:: Send {up 20}
CapsLock & n:: Send {down 20}

;左右滚动
CapsLock & WheelUp:: Send {WheelLeft}
CapsLock & WheelDown:: Send {WheelRight}

;------------------------------------------------------------------------------
;中文标点
Tab & vkbc:: Send 《
Tab & vkbe:: Send 》
Tab & vkbf:: Send ？
Tab & vkba:: Send ：
Tab & vkde:: Send “”

Tab & 1:: Send ！
Tab & 9:: Send （
Tab & 0:: Send ）

CapsLock & vkbc:: Send ，
CapsLock & vkbe:: Send 。
CapsLock & vkbf:: Send 、
CapsLock & vkba:: Send ；
CapsLock & vkde:: Send ‘’

;------------------------------------------------------------------------------
;任务栏音量调节
#If MouseIsOver("ahk_class Shell_TrayWnd")
    WheelUp:: Send {Volume_Up 2}
    WheelDown:: Send {Volume_Down 2}
    MouseIsOver(WinTitle) 
    {
       MouseGetPos,,, Win
       return WinExist(WinTitle . " ahk_id " . Win)
    }
return