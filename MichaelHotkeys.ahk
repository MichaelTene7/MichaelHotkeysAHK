#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ---- hooks, use memory. If scripts not working, try enabling them (remove semicolon)
 ;#Installkeybdhook
 ;#installmousehook

; ^ codes for cntl, + codes for shift, ! codes for alt # codes for windows-key, and semicolons mean the code ignores the rest of the line 

; ----- Shortcut Commands 

^+3::
Send, ♤
return

^+/::
Send,‽
Return

^+m::
Send, ♪
Return

^+=::
Send, ≠
Return

!+p::
Send, 𝜋
Return

^+d::
Send, °
Return

^+-::
Send, ±
Return

^+k::
Keyhistory
return

!+d::
Send, Δ
return

!+=::
Send, ≈
return

^+u::
Send, μ
return
!+i::
Send, ∞
return

^+6::
Send, ⌄
return

^+,::
Send, ≤
return

^+.::
Send, ≥
return

;---Code Commands---
!1::
Send, {text} !=
return 


;----R shortcuts ---

^+p::
Send, `%`>`%
return

;!c::
;Send, c(
;return


^!c::
Send, {Ctrl down}b{Ctrl up}[Complete]{Ctrl down}b{Ctrl up}


;---------------

Xbutton2::
Send, {Space}     
#IfWinActive
Return

;^+s::
;Send, SARS-CoV-2
;Return


; ------ Bot Control Hotkeys; DISABLE IF NOT USING DISCORD BOTS
+^8::
Send, &play
Send, {Space}  
Return

+^7::
Send, &skip 
Send, {Space}
Return

+^9::
Send, &repeat single 
Send, {Space} 
Return

+^0::
Send, &remove all
Send, {Space}  
Return

;----- Semi Auto Discord font change

^+f::
    changeFont(){
        WinActivate, ahk_exe Discord.exe
        SendInput ^+i
        Sleep 3000
        Send {ctrl down}``{ctrl up}
        Sleep 3000
        Send {text}let whitneyLove = document.createElement('style');
	Send +{enter}
        Send {text}whitneyLove.innerHTML = 'body{ font-family: "Noto Sans"}'
	Send +{enter}
        Send {text}document.head.appendChild(whitneyLove); `n
	SendInput ^+i
}

; ------ CODE TO USE VOLUME BUTTONS AS MEDIA CONTROLS. IF YOU DO NOT WANT THIS, MAKE SURE TO COMMENT OUT.
; ------ Results in "double click volume up" as 'Space' (pause); and "double click volume down" as rewind (left)

~$Volume_Up up::
if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 300 && A_TimeSincePriorHotkey > 200)
{
	Send {Space down}
	keywait Volume_Up
	Send {Space up}
	Send {Volume_Down}
        Send {Volume_Down}
}
else
{
	;Send {Volume_Up down}
	;keywait Volume_Up
	;Send {Volume_Up up}
}
return

~$Volume_Down up::
if (A_ThisHotkey = A_PriorHotkey && A_TimeSincePriorHotkey < 300 && A_TimeSincePriorHotkey > 200)
{
	Send {Left down}
	keywait Volume_Down
	Send {Left up}
	Send {Volume_Up}
        Send {Volume_Up}
}
else
{
	;Send {Volume_Down down}
	;keywait Volume_Down
	;Send {Volume_Down up}
}
return


; ----- MOUSE 3 BUTTON FUNCTIONS---- 

^+t:: 
if (MouseSetting == 2)
{
	MouseSetting := 3 	
	TrayTip,, MouseSetting Alt

} else 
if (MouseSetting == 3)
{
	MouseSetting := 1 	
	TrayTip,, MouseSetting F14
} else
{
	MouseSetting := 2 	
	TrayTip,, MouseSetting Ctrl
}
return


#If (MouseSetting == 2)
f14::Ctrl
return
#If 

#If (MouseSetting == 3) 
f14::Alt
return
#If



; ---- NEW SHORTCUT TEMPLATE ----
; to use: 
; copy to the above section, remove the semicolons in front of each line, replace [bracketed text]
; ^ codes for cntl, + codes for shift, ! codes for alt # codes for windows-key, and semicolons mean the code ignores the rest of the line 

; ^+[shortcutkey]::
; Send, [desired output]
; Return


; ---- Always on top hotkey ----

^+o::  Winset, Alwaysontop, , A
return




; ---- Sleep Commands ---
;^+f::
;Send, k
;Sleep, 5000
;SendMessage,0x112,0xF170,2,,Program Manager
;Return


; ---- Media-movement-to-arrow-keys DISABLED ----

;Media_Next::
;Send, {Right}
;Return

;Media_Prev::
;Send, {Left}
;Return

; ---- Chrome-only media-movement-to-arrow-keys ----

#IfWinActive Ahk_class Chrome_WidgetWin_1
Media_Prev::
Send, {Left}
#IfWinActive
Return

#IfWinActive Ahk_class Chrome_WidgetWin_1
Media_Next::
Send, {Right}
#IfWinActive
Return

#IfWinActive Ahk_class Chrome_WidgetWin_1
Xbutton1::
Send, {Left}
#IfWinActive
Return

; -- new mouse keys 

#IfWinActive Ahk_class Chrome_WidgetWin_1
F15::
Send, ^{Tab}
#IfWinActive
Return

#IfWinActive Ahk_class Chrome_WidgetWin_1
F16::
Send, +^{Tab}
#IfWinActive
Return


#IfWinActive Ahk_class Chrome_WidgetWin_1
F17::
Send, {Media_Next}	
#IfWinActive
Return

#IfWinActive Ahk_class Chrome_WidgetWin_1
F18::
Send, {Media_Prev}
#IfWinActive
Return



; ---- Firefox-only media-movement-to-arrow-keys ----

#IfWinActive Ahk_class MozillaWindowClass
Media_Prev::
Send, {Left}
#IfWinActive
Return

#IfWinActive Ahk_class MozillaWindowClass
Media_Next::
Send, {Right}
#IfWinActive
Return

#IfWinActive Ahk_class MozillaWindowClass
Xbutton1::
Send, {Left}
#IfWinActive
Return

; -- new mouse keys 

#IfWinActive Ahk_class MozillaWindowClass
F15::
Send, ^{Tab}
#IfWinActive
Return

#IfWinActive Ahk_class MozillaWindowClass
F16::
Send, +^{Tab}
#IfWinActive
Return


#IfWinActive Ahk_class MozillaWindowClass
F17::
Send, {Media_Next}
#IfWinActive
Return

#IfWinActive Ahk_class MozillaWindowClass
F18::
Send, {Media_Prev}
#IfWinActive
Return

#IfWinActive Ahk_class MozillaWindowClass
F14::
Send, {Left}
#IfWinActive
Return

; ---- Oblivion hotkey -----

+^[::
Send, {Space 100}
Return


; ---- Window Name retrival Code (used to get names for above program-specific hotkeys ----

+^q::
WinGetClass, class, A
MsgBox, The active window's class is "%class%".
return

;+^w::
;WinGetTitle, title , A
;MsgBox, The active window's class is "%title%".
;return



; ------ Code for changing font quickly in googledocs
; Google docs font change shortcut: Courier New, for monospace
!c::
Send, !/
Sleep, 100
Send, Courier New
Sleep, 300
Send, {Enter}
return

; Google docs font change shortcut: Arial
!a::
Send, !/
Sleep, 100
Send, Arial
Sleep, 300
Send, {Enter}
return











; ---- Transparency code, not mine ----

 !+T::
    DetectHiddenWindows, on
    WinGet, curtrans, Transparent, A
    if ! curtrans
        curtrans = 255
    newtrans := curtrans - 44
    if newtrans > 0
    {
        WinSet, Transparent, %newtrans%, A

    }
    else
    {
        WinSet, Transparent, 255, A
        WinSet, Transparent, OFF, A
    }
    return

   ;#w::
   ;DetectHiddenWindows, on
   ;WinSet, TransColor, Black 128, A
   ;return

    #o::
    WinSet, Transparent, 255, A
    WinSet, Transparent, OFF, A
    return

    #g::  ; Press Win+G to show the current settings of the window under the mouse.
    MouseGetPos,,, MouseWin
    WinGet, Transparent, Transparent, ahk_id %MouseWin%
    WinGet, TransColor, TransColor, ahk_id %MouseWin%
    ToolTip Translucency:`t%Transparent%`nTransColor:`t%TransColor%
    return

; ----------------------------------------------












; ---- Hide other windows: press cntl-shift H to hide all windows but currently selected one ----

^+h::
#SingleInstance,Force
SetWinDelay,0

If WinNotExist,ahk_id %id%
	WinRestore,A

WinGet,id,ID,A
WinGet,style,Style,ahk_id %id%
If (style & 0x20000)
{
	WinGet,winid_,List,,,Program Manager
	Loop,%winid_% 
	{
		StringTrimRight,winid,winid_%A_Index%,0
		If id=%winid%
			Continue

		WinGet,style,Style,ahk_id %winid%
		If (style & 0x20000)
		{
			WinGet,state,MinMax,ahk_id %winid%,
			If state=-1
				Continue

			WinGetClass,class,ahk_id %winid%
			If class=Shell_TrayWnd
				Continue

			IfWinExist,ahk_id %winid%
				WinMinimize,ahk_id %winid%
		}
  }
}

return

; ---------------------------------







; ---- NEW HOTSTRING TEMPLATE ----
; This will let you replace any string of charcters with a longer message (eg. clash's message-to-meme-autofill)
; However, these need the keyboardhook active to work (this uses memory)
; EXAMPLE: 
; ::btw::by the way (runs once you press space)
; :*:btw::by the way (runs once you press the final y) 

; ::[your string here]::[your output here]
; Return

; ::[your string here]::
; (
; [Your long or multiparagraph message here]  
; )
; Return







