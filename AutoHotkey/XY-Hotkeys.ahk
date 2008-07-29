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

;Ctrl+F8 - Cycle Visible Navigation Panels Forward
;Order is: Tree & Catalog -> Tree Only -> Catalog Only -> Neither -> Repeat
^F8::CyclePanels()

;Ctrl+Shift+F8 - Cycle Visible Navigation Panels Backwards
;Order is: Neither -> Catalog Only -> Tree Only -> Tree & Catalog -> Repeat
^+F8::CyclePanels(0)

;Block the mouse wheel on address bar unless list is shown.
$WheelUp::DoWheelFunction("{WheelUp}")
$WheelDown::DoWheelFunction("{WheelDown}")

;Remap (Shift+)Tab to function as up/down when an auto-complete/MRU list is visible.
$Tab::DoTabFunctions(1)
$+Tab::DoTabFunctions(0)