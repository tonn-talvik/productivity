#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Backspace and Ctrl+Backspace
CapsLock::Send, {Blind}{BackSpace}
^CapsLock::Send, {Blind}{BackSpace}

; Home and End
<^>!g::Send, {Home}
<^>!r::Send, {End}

; Home and End, shift
+<^>!g::Send, +{Home}
+<^>!r::Send, +{End}

; Right Alt(Gr) and I,J,K,L for navigation
<^>!c::Send, {Up}
<^>!t::Send, {Down}
<^>!h::Send, {Left}
<^>!n::Send, {Right}

; Shift for selection
+<^>!c::Send, +{Up}
+<^>!t::Send, +{Down}
+<^>!h::Send, +{Left}
+<^>!n::Send, +{Right}

; Win for window management
#<^>!c::Send, #{Up}
#<^>!t::Send, #{Down}
#<^>!h::Send, #{Left}
#<^>!n::Send, #{Right}

; Left alt too, e.g. jump backwards
<!<^>!c::Send, !{Up}
<!<^>!t::Send, !{Down}
<!<^>!h::Send, !{Left}
<!<^>!n::Send, !{Right}

;^!c::Send, ^{Up}
;^!t::Send, ^{Down}
;^!h::Send, ^{Left}
;^!n::Send, ^{Right}

;^!c::Send, {Blind}{Up}
;^!t::Send, {Blind}{Down}
;^!h::Send, {Blind}{Left}
;^!n::Send, {Blind}{Right}


;#<^>!c::Send, #{Up}
;#<^>!t::Send, #{Down}
;#<^>!h::Send, #{Left}
;#<^>!n::Send, #{Right}

