
; https://superuser.com/questions/1000678/disable-winspace-keyboard-layout-switch-in-windows-10
;#space::



Scrolllock::

; Toggle ScrollLock indicator
SetScrollLockState % !GetKeyState("ScrollLock", "T") ; requires [v1.1.30+]

; Toggle between Estonian Dvorak and English Qwerty (more precisely, between configured Windows keyboard layouts)
; https://stackoverflow.com/questions/41870060/autohotkey-change-keyboard-layout-by-pressing-both-shift-keys/50008010#50008010
INPUTLANGCHANGE_FORWARD := 0x2
WM_INPUTLANGCHANGEREQUEST := 0x0050
WinGet, windows, List
Loop % windows {
  PostMessage WM_INPUTLANGCHANGEREQUEST, INPUTLANGCHANGE_FORWARD, % Lan, , % "ahk_id " windows%A_Index%
}
return
