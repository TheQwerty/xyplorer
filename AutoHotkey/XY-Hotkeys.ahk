#include XY-Functions.ahk

;--------------------------------------------------------------------------------
;XYplorer (unfortunately it's the generic VB6 class).
;--------------------------------------------------------------------------------
#IfWinActive ahk_class ThunderRT6FormDC

;Ctrl+Shift+Backspace - Map to Ctrl+Shift+Left, Backspace
^+Backspace::SendInput ^+{Left}{Backspace}

;(Shift+)Tab - Up/Down on visible auto-complete/MRU lists.
$Tab::DoTabFunctions(1)
$+Tab::DoTabFunctions(0)

;Ctrl+Left Click - Fake breadcrumb in address bar.
~^LButton UP::
	if (AddressBarHasFocus()) {
		SendInput {Click}{Control Down}{Right}{Control Up}{Shift Down}{End}{Shift Up}{Delete}{Enter}
	}
	return

;Left Click - Count the number of successive clicks (used to catch double click).
~LButton::
	if (LB_presses > 0) {
		LB_presses += 1
	} else {
		LB_presses = 1
		SetTimer, LBCounter, 400
	}
	return

;Double Left Click - Fake breadcrumb in address bar.
LBCounter:
	SetTimer, LBCounter, Off
	if (LB_presses == 2 && AddressBarHasFocus()) {
		SendInput {Left}{Right}{Shift Down}{End}{Shift Up}{Delete}{Enter}
	}
	LB_presses = 0
	return

;--------------------------------------------------------------------------------
;ALL WINS
;--------------------------------------------------------------------------------
#IfWinExist

;Win+E, Run, Activate, or Minimize XYplorer.
#E::
	IfWinActive ahk_class ThunderRT6FormDC
	{
		WinMinimize A
	} else {
		RunOrActivate("D:\Downloads\Apps\XYplorer\XYplorer.exe","","ThunderRT6FormDC", "left")
	}
	return