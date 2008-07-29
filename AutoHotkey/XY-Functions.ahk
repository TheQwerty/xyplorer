;isListControl(focus)
;This function checks to see if the focused control is one that has an MRU/Auto-Complete list.
isListControl(focus) {
	validControls =
(Join| LTrim Comments
	Edit1
	Edit2
	Edit3
	Edit4
	Edit5
	Edit6	;Address Bar
	ThunderRT6TextBox2
	ThunderRT6TextBox3
)
	validControls = |%validControls%|
	focus = |%focus%|
	return InStr(validControls, focus)
}

;isListDisplay(focus, boxTransColor, searchAreaSize)
;This function checks to see if a MRU/Auto-Complete list is displayed above or below the control "focus".
;boxTransColor is used to define what color within the box corner images should be treated as transparent.
;This allows for handling the cases where the nearest item in the list is selected.
;searchAreaSize defines the size of the square area around the corner of the control to search for the list.
isListDisplayed(focus, boxTransColor, searchAreaSize) {
	;Get the area of the focused control.
	ControlGetPos CX1, CY1, CW, CH, %focus%

	listDisplayed := false

	;X coordinates for both searches.
	SX1 := CX1 - searchAreaSize
	SX2 := CX1 + searchAreaSize


	;Y coordinates for searching below.
	SY1 := CY1 + CH - searchAreaSize
	SY2 := CY1 + CH + searchAreaSize
	ImageSearch, X, Y, SX1, SY1, SX2, SY2, *Trans%boxTransColor% ListBox-Below.bmp
	if (! ErrorLevel) {
		;The list box was found underneath the control.
		listDisplayed := true
	} else {
		;Y coordinates for searching above.
		SY1 := CY1 - searchAreaSize
		SY2 := CY1 + searchAreaSize
		ImageSearch, X, Y, SX1, SY1, SX2, SY2, *Trans%boxTransColor% ListBox-Above.bmp
		if (! ErrorLevel) {
			;The list box was found above the control
			listDisplayed := true
		}
	}
	return %listDisplayed%
}

;DoWheelFunction(action)
;Block sending the action if the focused control has a list box that is not visible.
DoWheelFunction(action) {
	;This is the color of the inside of the list box.
	;This accounts for cases when the item on the search edge is highlighted.
	boxTransColor := 0xFFFFFF

	;The length of a side of the search area.
	;The middle of the control's corner (top-left or bottom-left depending on search)
	;is placed inside a box with sides of this value.
	searchAreaSize := 10


	ControlGetFocus focus
	if (isListControl(focus)) {
		if (! isListDisplayed(focus, boxTransColor, searchAreaSize)) {
			;List is not displayed.
			return
		}
	}

	Send %action%
	return
}


;DoTabFunctions(mode)
;Driver to call TabOnList or spoof the original Tab keypress.
DoTabFunctions(mode) {
	if (! TabOnList(mode)) {
		;The List is not Open, spoof the original Tab key (XY is very picky about how Tab is sent when in Rename Mode).
		SetKeyDelay -1
		Send {Blind}{Tab DownTemp}
		Sleep 5
		Send {Blind}{Tab Up}
	}
}


;TabOnList(mode)
;This function detects if we're in a control with an auto-complete/MRU list and if the list is visible
;it sends an Up (mode = 0) or Down (mode = 1) keypress.
TabOnList(mode) {
	;This is the color of the inside of the list box.
	;This accounts for cases when the item on the search edge is highlighted.
	boxTransColor := 0xFFFFFF

	;The length of a side of the search area.
	;The middle of the control's corner (top-left or bottom-left depending on search)
	;is placed inside a box with sides of this value.
	searchAreaSize := 10

	result := false

	ControlGetFocus focus
	if (isListControl(focus)) {
		if (isListDisplayed(focus, boxTransColor, searchAreaSize)) {
			;Hack to fix issues with focus arguments.
			;
			;The System list control automatically highlights the item under the mouse cursor
			;and gives preference to that over our sent commands, breaking the up and down if
			;the mouse is over the list.
			;
			;This hack moves the mouse in the case that it's over the list and the hotkey is pressed.
			MouseGetPos ,,MY,,MControl
			ifInString MControl, SysListView
			{
				;The list is a system control so move the mouse cursor.
				;
				;The values here are more important than you think at first.
				;If you move it up or down the selected item may change (which we don't want)
				;But you can't reliably determine the width of the list box so it can't be easily
				;moved to the right.
				;Moving it to (0, MY) keeps it at the same Y value, but moves it to the left edge of the
				;application.
				;
				;This may not be reliable either but it's less likely the list box will extend over this
				;far, as the control seems to anchor the top-left corner when resizing.
				MouseMove 0, MY, 0
			}

			if (mode) {
				SendInput {Down}
			} else {
				SendInput {Up}
			}
			result := true
		}
	}
	return %result%
}

;VisiblePanels()
;This function detects which panels in the navigation panel are visible.
;Returns a 3-bit number with the states (1 = Visible) from most important bit to least are:
;	Navigation Panel
;	Catalog
;	Tree
VisiblePanels() {
	;Nav Panel
	ControlGetPos npX, npY, npW, npH, ThunderRT6PictureBoxDC59, A
	;Catalog
	ControlGet seeCat, Visible,, ThunderRT6PictureBoxDC3, A
	;Tree
	ControlGet seeTree, Visible,, ThunderRT6PictureBoxDC60, A

	return (npX > 5)*4 + seeCat*2 + seeTree
}


;CyclePanels(mode=1)
;This function cycles the visible panels in the navigation panel.
;Order is: Tree & Catalog -> Tree Only -> Catalog Only -> Neither -> Repeat
;Mode controls the direction, if mode is False (0) the order is reversed.
CyclePanels(mode=1) {
	cv := VisiblePanels()

	if (cv < 5) {
		;Nav Panel or (Tree and Catalog) are not visible
		if (mode) {
			dv := 7 ;Show Both
		} else {
			dv := 6 ;Show Catalog Only
		}
		;Toggle Nav Panel and update Visible Panels.
		SendMessage 0x111, 351
		cv := VisiblePanels()

	} else if (cv == 5) {
		;Only Tree is visible
		if (mode) {
			dv := 6 ;Show Catalog Only
		} else {
			dv := 7 ;Show Both
		}

	} else if (cv == 6) {
		;Only Catalog is visible
		if (mode) {
			dv := 2 ;Show Neither (by hiding Navigation Panel)
		} else {
			dv := 5 ;Show Tree Only
		}
	} else if (cv == 7) {
		;Tree and Catalog are visislbe
		if (mode) {
			dv := 5 ;Show Tree Only
		} else {
			dv := 3 ;Show Neither (by hiding Navigation Panel)
		}
	}

	if (cv & 4 != dv & 4) {
		;Toggle Nav Panel
		SendMessage 0x111, 351
	}

	if (cv & 2 != dv & 2) {
		;Toggle Catalog
		SendMessage 0x111, 353
	}

	if (cv & 1 != dv & 1) {
		;Toggle Tree
		SendMessage 0x111, 352
	}
	return
}

;***************************************************************************************
;	This function attempts to display or run an application.
;
;	It makes use of code written by Sean and posted to the
;	AutoHotkey forums ( http://www.autohotkey.com/forum/topic17314.html )
;	to interact with tray icons.
;
;	I've modified that code to fit the needs here and removed
;	functionality that was not being used.
;
;	This function will check to see if the passed exe is running and either activate
;	its main window or start the application with the passed parameters.
;
;	If the application is running and is visible its main window will be activated.
;	If the application is running but is not visible (presumably it is hidden to the
;		tray) it will attempt to display the window by sending event to the tray icon,
;		and then it will activate the main window.
;	If the application is not running it will attempt to start it with the passed
;		parameters and then active the main window.
;
;	Parameters:
;		EXE_PATH
;			This is the path (relative or absolute) to the applications EXE.
;		EXE_PARAMETERS
;			If the application is not running this function will attempt to run it and
;			will include the contents of this variable after the EXE.
;		MainWindowClass
;			This is the class (ahk_class) for the window which should be activated.
;			You can find this using the Window Spy included with AHK or other similar
;			utilities.
;		event
;			If the application is in the system tray, this is the event that is needed
;			to display the window.
;			This must be one of the following values:
;				LEFT		Performs a left click.
;				LEFT_DBL	Performs a double left click.
;				RIGHT		Performs a right click.
;				RIGHT_DBL	Performs a double right click.
;				MIDDLE		Performs a middle click.
;				MIDDLE_DBL	Performs a double middle click.
;
;	Return Values:
;		0	No Errors
;		1	System Tray Taskbar Not Found
;		2	Unknown Event Parameter
;		3	Tray icon not found
;		4	Timed out waiting for window to be visible  (Waits 10 seconds)
;
;	Caveats:
;		If there are multiple instances of the program running already, this script
;		will operate on the first one found.
;
;		Thus if you want to use it with explorer.exe you'll find it attempts to activate
;		the start bar if no other instances are currently open.  This also has the side
;		affect of not properly working with applications that are interpreted
;		(AHK scripts) unless the main window of each has a distinct class.
;
;		If the window is not hidden to the tray this will not attempt to unhide it.
;
;		If the window cannot be displayed by just clicking the system tray icon (if it
;		involves a click and menu selection), this funciton will not function properly.
;***************************************************************************************
RunOrActivate(EXE_PATH, EXE_PARAMETERS, MainWindowClass, event) {
	result := 0

	;Store to restore
	dhwm := A_DetectHiddenWindows

	;Check for an existing XYplorer process.
	SplitPath EXE_PATH, filename, dir
	Process Exist, %filename%
	pid := ErrorLevel
	if (ErrorLevel) {
		;Is running

		;Determine if the main window is visible.
		DetectHiddenWindows OFF
		WinGet id, ID, ahk_class %MainWindowClass% ahk_pid %pid%

		if (! id) {
			;Is not visible

			;************************************************************
			;	The following is taken and modified from Sean's post
			;	found at http://www.autohotkey.com/forum/topic17314.html
			;************************************************************
			DetectHiddenWindows ON

			;Get and count the ToolbarWindow32x controls from shell.
			WinGet ControlList, ControlList, ahk_class Shell_TrayWnd
			RegExMatch(ControlList, "(?<=ToolbarWindow32)\d+(?!.*ToolbarWindow32)", toolbarCnt)

			;Locate the ToolbarWindow32x control that is actually the tray.
			toolbarIDX := -1
			Loop %toolbarCnt% {
				idx := A_Index
				ControlGet thisHWND, HWND,, ToolbarWindow32%idx%, ahk_class Shell_TrayWnd
				thisParent := DllCall("GetParent", "Uint", thisHWND)
				WinGetClass parentClass, ahk_id %thisParent%

				if (parentClass = "SysPager") {
					toolbarIDX := idx
					break
				}
			}

			found := false
			if (toolbarIDX >= 0) {
				;Open a handle for the shell's explorer process.
				WinGet pidTaskbar, PID, ahk_class Shell_TrayWnd
				hProc := DllCall("OpenProcess", "Uint", 0x38, "int", 0, "Uint", pidTaskbar)

				;Reserve memory for variables.
				pRB := DllCall("VirtualAllocEx", "Uint", hProc, "Uint", 0, "Uint", 20, "Uint", 0x1000, "Uint", 0x4)
				VarSetCapacity(btn, 20)
				VarSetCapacity(nfo, 24)
				VarSetCapacity(sTooltip, 128)
				VarSetCapacity(wTooltip, 128 * 2)

				;Number of icons to check
				SendMessage 0x418, 0, 0, ToolbarWindow32%toolbarIDX%, ahk_class Shell_TrayWnd   ; TB_BUTTONCOUNT
				el := ErrorLevel
				Loop, %el% {
					;Current button
					SendMessage 0x417, A_Index - 1, pRB, ToolbarWindow32%toolbarIDX%, ahk_class Shell_TrayWnd   ; TB_GETBUTTON

					;Read information about the button from memory.
					DllCall("ReadProcessMemory", "Uint", hProc, "Uint", pRB, "Uint", &btn, "Uint", 20, "Uint", 0)

					iBitmap := NumGet(btn, 0)
					idn := NumGet(btn, 4)
					Statyle := NumGet(btn, 8)
					dwData := NumGet(btn,12)
					iString := NumGet(btn,16)

					;Read program specific info about the button from memory.
					DllCall("ReadProcessMemory", "Uint", hProc, "Uint", dwData, "Uint", &nfo, "Uint", 24, "Uint", 0)

					hWnd	:= NumGet(nfo, 0)
					uID		:= NumGet(nfo, 4)
					nMsg	:= NumGet(nfo, 8)
					hIcon	:= NumGet(nfo,20)

					;Get window information.
					WinGet pid, PID, ahk_id %hWnd%
					WinGet sProcess, ProcessName, ahk_id %hWnd%
					WinGetClass sClass, ahk_id %hWnd%

					if (filename = sProcess) {
						;Found the icon we're looking for.
						found := true
						break
					}
				}
			} else {
				;System Tray Taskbar Not Found.
				result := 1
			}

			if (found) {
				;Clean up and close the handle.
				DllCall("VirtualFreeEx", "Uint", hProc, "Uint", pRB, "Uint", 0, "Uint", 0x8000)
				DllCall("CloseHandle", "Uint", hProc)

				;MsgBox % "idn: " . idn . " | Pid: " . pid . " | uID: " . uID . " | MessageID: " . nMsg . " | hWnd: " . hWnd . " | Class: " . sClass . " | Process: " . sProcess . "`n"

				;************************************************************
				;	End of Sean's code.
				;************************************************************

				LEFT_DOWN	:= 0x201
				LEFT_UP		:= 0x202
				LEFT_DBL	:= 0x203
				RIGHT_DOWN	:= 0x204
				RIGHT_UP	:= 0x205
				RIGHT_DBL	:= 0x206
				MIDDLE_DOWN	:= 0x207
				MIDDLE_UP	:= 0x208
				MIDDLE_DBL	:= 0x209

				StringUpper event, event
				if (event = "LEFT" || event = "RIGHT" || event = "MIDDLE") {
					down := %event%_DOWN
					up := %event%_UP
					PostMessage %nMsg%, %uID%, %down%,, ahk_id %hWnd%
					PostMessage %nMsg%, %uID%, %up%,, ahk_id %hWnd%
				} else if (event = "LEFT_DBL" || event = "RIGHT_DBL" || event = "MIDDLE_DBL") {
					event := %event%
					PostMessage %nMsg%, %uID%, %event%,, ahk_id %hWnd%
				} else {
					;Unknown Event Parameter
					result := 2
				}
			} else {
				;Tray icon not found.
				result := 3
			}
		}
	} else {
		;Not running attempt to run.
		run %EXE_PATH% %EXE_PARAMETERS%,%dir%,,pid
	}

	if (result = 0) {
		;Activate the window after it is shown.
		WinWait ahk_class %MainWindowClass% ahk_pid %pid%,,10
		if (! ErrorLevel) {
			WinActivate ahk_class %MainWindowClass% ahk_pid %pid%
		} else {
			;Timed out waiting for window to be visible.
			result := 4
		}
	}

	;Restore setting(s)
	DetectHiddenWindows %dhwm%
	return %result%
}