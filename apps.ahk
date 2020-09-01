#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;E.G. BEGIN
;!(ALT)<Key>::
;	if WinExist("<WinTitle String>")
;		WinActivate  Uses the last found window.
;	else 
;		Run <program>
;	return (so it don't get borked and run all of them)


;Shamelessly yoinked from https://autohotkey.com/board/topic/88790-cycle-through-windows-of-the-same-class-as-the-current-window/
#PgDn::	; Next Window of same class, Win+PgDn (# is a modifier for either LWin or RWin)
	WinGetClass, CurrentActive, A
	WinGet, Instances, Count, ahk_class %CurrentActive%
	If Instances > 1
		WinSet, Bottom,, A
	WinActivate, ahk_class %CurrentActive%
	return

;Shamelessly yoinked from https://autohotkey.com/board/topic/88790-cycle-through-windows-of-the-same-class-as-the-current-window/
#PgUp::	; Previous Window of same class, Win+PgDn (# is a modifier for either LWin or RWin)
	WinGetClass, CurrentActive, A
	WinGet, Instances, Count, ahk_class %CurrentActive%
	If Instances > 1
		WinActivateBottom, ahk_class %CurrentActive%
	return

!U::
	if WinExist("ahk_exe ubuntu.exe")
		WinActivate ; Uses the last found window.
	else{
		;;This bs method is required to launch with environment variable axis of Run.exe and not AHK
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk"
		WinWait "Run", "ahk_class #32770", "ahk_exe Explorer.EXE"
		Send "ubuntu"
		Send {Enter}
	} 
		
	return


!I::
	if WinExist("ahk_exe powershell.exe")
		WinActivate  ; Uses the last found window.
	else{
		;;This bs method is required to launch with environment variable axis of Run.exe and not AHK
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk"
		WinWait "Run", "ahk_class #32770", "ahk_exe Explorer.EXE"
		Send "powershell"
		Send {Enter}
	} 
		
	return

!C::
	if WinExist("ahk_exe chrome.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk"
	return

!F::
	if WinExist("ahk_class MozillaWindowClass")
		WinActivate  ; Uses the last found window.
	else 
		Run Firefox		
	return
	
!N::
	if WinExist("ahk_class Notepad++")
		WinActivate  ; Uses the last found window.
	else 
		Run Notepad++		
	return
	
!D::
	if WinExist("ahk_exe Discord.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
	return
	
!X::
	if WinExist("ahk_exe xampp-control.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\xampp\xampp-control.exe"
	return
	
!S::
	if WinExist("ahk_exe Spotify.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk"
	return
	
!E::
	if WinExist("ahk_class SWT_Window0")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Eclipse\Eclipse Java 2019-06.lnk"
	return
	
!G::
	if WinExist("ahk_exe GitHubDesktop.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\Documents\Macros\GitHub Desktop.lnk"
	return
	
	
!W::
	if WinExist("ahk_class CabinetWClass")
		WinActivate  ; Uses the last found window.
	else 
		Run explorer
	return	
	
!P::
	if WinExist("ahk_exe Postman.exe")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Postman\Postman.lnk"
	return	
!Z:: 
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\Users\benny\my-app `r`n ng build my-app `r`n exit `r`n
	return	

+!Z:: 
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\Users\benny\my-app `r`n ng build my-app `r`n
	return		

!R::
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\xampp\htdocs `r`n npx babel-cli react --ignore node_modules --out-dir compiled --copy-files --presets react `r`n exit `r`n
	return	
	
+!R::
		run cmd.exe
		WinWait C:\WINDOWS\SYSTEM32\cmd.exe ; Waiting for system to catch up
		if WinExist("ahk_exe cmd.exe"){
			
		} ; Ensures this cmd is the most recently found window
		
		
		WinActivate ; Opens most recently found window (found by WinExist)
		Send {Text}cd C:\xampp\htdocs `r`n npx babel-cli react --ignore node_modules --out-dir compiled --copy-files --presets react `r`n
	return	

!T::
	if WinExist("ahk_exe cmd.exe")
		WinActivate  ; Uses the last found window.
	else {
		;;This bs method is required to launch with environment variable axis of Run.exe and not AHK
		Run "C:\Users\benny\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Run.lnk"
		WinWait "Run", "ahk_class #32770", "ahk_exe Explorer.EXE"
		Send "cmd"
		Send {Enter}
	}
	return	

!O::
	if WinExist("ahk_exe WINWORD.EXE") || WinExist("ahk_exe EXCEL.EXE") || WinExist("ahk_exe POWERPNT.EXE")
		WinActivate  ; Uses the last found window.
	else 
		Run "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
	return	

!V::
	if WinExist("ahk_exe devenv.exe")
		WinActivate  ; Uses the last found window.
	else{ 
		Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2019.lnk"
	}
	return	
	
!M::
	Send ^+{Esc}	; Control+Shift+Esc, This starts task manager or focuses it if running.
	return

!A::
	Send document.getElementsByTagName("video")[0].playbackRate = 
	return

+!A::
	Send document.getElementsByTagName("video")[0].playbackRate = 2.5{Enter}
	return


;Web shortcuts, pretty simple, there is corresponding batch file for each

!L::
	Run "C:\Users\benny\Documents\Macros\localhost.bat"
	return

!Y::
	Run "C:\Users\benny\Documents\Macros\youtube.bat"
	return
