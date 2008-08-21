#include XY-Functions.ahk

;Win+E, Run or Activate XYplorer.
#E::RunOrActivate("D:\Downloads\Apps\XYplorer\XYplorer.exe","","ThunderRT6FormDC", "left")

;Detect XY via class as the exe can be renamed and "XYplorer" may not be in the title.
#IfWinActive ahk_class ThunderRT6FormDC

;Ctrl+Shift+Backspace - Map to Ctrl+Shift+Left, Backspace
^+Backspace::SendInput ^+{Left}{Backspace}

;Ctrl+K - Switch focus between address bar and list
^K::
	ControlGetFocus focus, A
	if (focus == "Edit6") {
		;Focus List
		ControlFocus ThunderRT6PictureBoxDC59, A
	} else {
		;Focus Address Bar
		ControlFocus Edit6, A
	}
	return

;Block the mouse wheel on address bar unless list is shown.
$WheelUp::DoWheelFunction("{WheelUp}")
$WheelDown::DoWheelFunction("{WheelDown}")

;Remap (Shift+)Tab to function as up/down when an auto-complete/MRU list is visible.
$Tab::DoTabFunctions(1)
$+Tab::DoTabFunctions(0)

Ctrl & LButton::
	SendInput ^{Click}
	Sleep 10
	ControlGetFocus focus, A
	if (focus == "Edit6") {
		SendInput {Click}{Control Down}{Right}{Control Up}{Shift Down}{End}{Shift Up}{Delete}{Enter}
	}

	return

~LButton::
	if (LB_presses > 0) {
		LB_presses += 1
	} else {
		LB_presses = 1
		SetTimer, LBCounter, 400
	}
	return

LBCounter:
	SetTimer, LBCounter, Off

	if (LB_presses == 2) {
		ControlGetFocus focus, A
		if (focus == "Edit6") {
			SendInput {Left}{Right}{Shift Down}{End}{Shift Up}{Delete}{Enter}
		}
	}
	LB_presses = 0
	return