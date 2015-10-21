# Table of Contents #


# Introduction #

XYplorer stores much of it's settings and state in the file XYplorer.ini.

# Sections #

## Register ##
| **Key** | **Description** |
|:--------|:----------------|
| Name    | Name of the license owner. |
| Code    | License registration key. |
| dc      | Days since registration data was entered. |

## General ##
| **Key** | **Description** |
|:--------|:----------------|
| LastVer | Version of XYplorer which wrote these settings. |
| WinW    | Width of the main window. |
| WinH    | Height of the main window. |
| WinX    | X-coordinate of the position of the main window's top-left corner, relative to (0,0). |
| WinY    | Y-coordinate of the position of the main window's top-left corner, relative to (0,0). |
| WinZ    | **UNKNOWN _Z-Order?_** |
| WinState | Main window's state. 0 = Normal; 1 = Minimized; 2 = Maximized |
| WinStatePrev | **UNKNOWN _Main window's previous state?_** |
| WinOnTray | Is main window minimized to tray? |
| SplitPos | Position of splitter between Navigation Panel & List. |
| !SplitPosXDP | Position of vertical splitter between List panes. |
| !SplitPosYDP | Position of horizontal splitter between List panes. |
| CatalogHeight | Height of the Catalog. |
| CatalogHeightSet | **UNKNOWN _Height of the Catalog as set by user? I believe CatalogHeight is the actual height which may change when the window or Navigation Panel's content is adjusted._** |
| PanelHeight | Height of the Information Panel. |
| PanelHeightJump | **UNKNOWN _Similar relationship to PanelHeight as CatalogHeight & CatalogHeightSet?_** |
| StartPath | _Tools_ > _Configuration_ > _Startup & Exit_ > _Permanent Startup Path_ |
| StartPathExpanded | _Tools_ > _Configuration_ > _Startup & Exit_ > _Expand in Tree_ |
| LockTree | _View_ > _Lock Tree_ |
| Goto    | _Go_ > _Go to_ > Initial Value |
| NewPath | _Edit_ > _New_ > _New Path_ > Initial Value |
| PathBackupSettings | _File_ > _Settings_ > _Backup All Settings_ > Initial Value |
| LastFocus | Control that had focus. **INCOMPLETE _Needs valid value list._** |
| LastTab |                 |
| LastTabFind |                 |
| LastTabRep |                 |
| LastTag |                 |
| LastFindTag |                 |
| LastView |                 |
| ModulesOff |                 |
| HomeMode |                 |
| LogToFile |                 |
| Layout  |                 |
| LayoutSP |                 |
| AddressBarHide |                 |
| ToolbarHide |                 |
| TabsHide |                 |
| NavHide |                 |
| ShowTree |                 |
| ShowCatalog |                 |
| CatalogOnTop |                 |
| HighTree |                 |
| PanelHide |                 |
| ShowStatusbar |                 |
| ShowTBBJ |                 |
| Pane    |                 |
| DP      |                 |
| DPHorizontal |                 |
| Toolbar |                 |
| ToolbarLarge |                 |
| ToolbarScrolls |                 |
| ToolbarKeepOff |                 |
| clrMarkedText |                 |
| clrMarkedTextWindow |                 |
| clrLineNumText |                 |
| clrLineNumBack |                 |
| clrTreeSelNoFocusBack |                 |
| clrTreeLocked |                 |
| clrListSelNoFocusBack |                 |
| PostfixNum |                 |
| PostfixDate |                 |
| DroppedMessageFormat |                 |
| DroppedMessageReplChar |                 |
| ImageFromClipFormat | ; Tweak: png (default), jpg, bmp, gif, or tif |
| UnitByte | ; Tweak: set label for unit byte |
| FolderEmpty | ; Tweak: set label for empty folders |
| StatusBar3OnFile | ; Tweak: E.g. 

&lt;curname&gt;

<curver , v**>, mod**

&lt;datem&gt;

 |
| TermThisHour | ; Tweak: 'Now' in file dates |
| TermToday | ; Tweak: 'Today' in file dates |
| TermYesterday | ; Tweak: 'Yesterday' in file dates |
| TermSearchResults |                 |
| TermRecycleBin | ; Tweak: Recycle Bin caption |
| SplitterWidth |                 |
| MoveTo  |                 |
| CopyTo  |                 |
| BackupTo |                 |
| MultipleRenameDefault | ; Tweak: Set to b|r|s|k|e to open Batch[Default](Default.md)|RegExp|SearchReplace|KeepChars|SetExtension when calling Rename on multiple files. |
| KeepParticularChars |                 |
| RemoveParticularChars |                 |
| RegExpRename |                 |
| RegExpRenameSep | ; Tweak: Separator between RegExpPattern and ReplaceWith, Default |
| SetExtension |                 |
| BatchRename |                 |
| RenamePreviewZebraColor | ; Tweak: RRGGBB |
| !RenamePreviewColorOK | ; Tweak: RRGGBB |
| RenamePreviewColorWarn | ; Tweak: RRGGBB |
| RPLeft  |                 |
| RPTop   |                 |
| RPWidth |                 |
| RPHeight |                 |
| LMLeft  |                 |
| LMTop   |                 |
| LMWidth |                 |
| LMHeight |                 |
| ALLeft  |                 |
| ALTop   |                 |
| ALWidth |                 |
| ALHeight |                 |
| SVLeft  |                 |
| SVTop   |                 |
| SVWidth |                 |
| SVHeight |                 |
| BJDLeft |                 |
| BJDTop  |                 |
| BJDWidth |                 |
| BJDHeight |                 |
| !VFPersistAcrossFolders |                 |
| SelFilter |                 |
| SearchResultsTab |                 |
| OpenWithArguments |                 |
| QFVWrap |                 |
| QFVLeft |                 |
| QFVTop  |                 |
| QFVWidth |                 |
| !QFVWidthHex |                 |
| QFVHeight |                 |
| !CKSCategoryLast |                 |
| !CKSCommandLast |                 |
| !CKSCommandTopLast |                 |
| !UDCCategoryLast |                 |
| !UDCCommandLast |                 |
| !UDCCommandTopLast |                 |
| ScriptTryLeft |                 |
| ScriptTryTop |                 |
| ScriptTryWidth |                 |
| ScriptTryHeight |                 |
| StepScripts |                 |
| StepWinLeft |                 |
| StepWinTop |                 |
| BackupBatches |                 |
| ShowTipOnStartup |                 |
| ShowTipOnTop |                 |
| TitlebarTemplate |                 |
| WOW64DisableRedirection | ; Tweak: set to 1 to disable WOW64 redirection on 64-bit platforms (NOT recommended with file operations!) |
| FixFocusLoss | ; Tweak: Fix focus loss of modal popups on taskbar activation |
| UseShellExecuteToOpen |                 |
| AllowMultiLocShellMenu |                 |

## Settings ##
| **Key** | **Description** |
|:--------|:----------------|
| LastTab |                 |
| ShowSpecFolderDesktop |                 |
| ShowSpecFolderPersonal |                 |
| ShowSpecFolderUser |                 |
| ShowFloppies |                 |
| ShowHiddenDrives |                 |
| ShowHiddenItems |                 |
| ShowSystemItems |                 |
| ShowJunctions |                 |
| ShowNethood |                 |
| ShowRecycleBin |                 |
| HideFoldersInList |                 |
| PopupAvailableDrivesOnly | ; Tweak: set to 1 to show only available drives in Go | Drives... |
| !CustomDnDMenu |                 |
| CustomItemsCtxMenu |                 |
| CtxMenuDefaultOnly |                 |
| GoCommandsInContextMenu |                 |
| FindCommandsInContextMenu |                 |
| !KSInMenu |                 |
| AutoComplete |                 |
| AutoCompleteMatchFromBeginning | ; Tweak: set to 1 to match from beginning (start else matching is anywhere) |
| !AutoCompletePathABar |                 |
| AutoCompletePathGoTo |                 |
| AutoCompletePathLocation |                 |
| MoveLastUsedToTop |                 |
| !DCHoverSelect |                 |
| !DCSelectionLite |                 |
| !DCSelectAllOnFocusByMouse |                 |
| !DCSelectAllOnItemChange |                 |
| NoIconsInDropDowns | ; Tweak: skip icon retrieval in dropdowns |
| FlatPlusMinus | ; Tweak: draw collapse/expand icons in Tree and Catalog in a flat manner |
| !BeveledBorderTCL | ; Tweak: force old school border in Tree, List, Catalog |
| ApplyBoxColorToList |                 |
| SetListStyleGlobally |                 |
| AlternateGridColors |                 |
| UnderlineSelectedRow |                 |
| RememberListSettingsPerTab |                 |
| RememberListSettingsPerTabApply |                 |
| RenameExcludeExt |                 |
| ResortAfterRename |                 |
| AllowMoveOnRename | ; Tweak: allow moving an item to a new relative or absolute folder directly on inline rename |
| NoDisplayBeforeSort | ; Tweak: display new List contents only after all items have been retrieved and sorted |
| PreviewRenameSpecial |                 |
| PreviewShellIfNoneBetter | ; Tweak: fall back to shell preview |
| PreviewRawIfNoneBetter | ; Tweak: fall back to raw view |
| RawViewKeepOpen | ; Tweak: set to 1 to keep Raw Viewed file open and locked until unselected |
| NukeNoConfirm |                 |
| NukeNoRecycle |                 |
| NukeSkipLocked |                 |
| ApplyColorFilter |                 |
| ApplyColorFilterTree |                 |
| ApplyColorFilterToFilesOnly |                 |
| ShowTags |                 |
| TagColClick |                 |
| TagColClickRight |                 |
| CommentWrap |                 |
| SortFoldersApart |                 |
| SortMixedOnDates |                 |
| KeepFoldersOnTop |                 |
| SortNatural |                 |
| DefaultSortDesc |                 |
| KeepFocusedPosAfterSort |                 |
| ScrollToTopAfterSort |                 |
| TAFEnabled |                 |
| !TAFUsesSortedCol |                 |
| DblClickGoesUp |                 |
| NoAccessedTime | ; Tweak: set to 1 to omit the Time part in the Accessed column |
| SynchTreeToFind |                 |
| ExpandOnBrowse |                 |
| ExpandOnClick |                 |
| MiniTree |                 |
| MiniTreePaths |                 |
| MiniTreeHistoryDepth | ; Tweak: size of Mini Tree from Recent |
| MiniTreePathsFavorite |                 |
| MiniTreeVerifyOnSelect | ; Tweak: set to 1 to enable e.g. logon dialogs in MT |
| TreeSkipVerifyOnSelect | ; Tweak: set to 1 to skip checking for existence/availability |
| AutoOptimizeTree |                 |
| AutoOptimizeTreeRadical | ; Tweak: set to 1 to optimize the tree on each location change |
| RestoreMaxiTree |                 |
| MaxiTreePaths |                 |
| MiniTreeTopIndex |                 |
| MaxiTreeTopIndex |                 |
| CheckSubfoldersExist |                 |
| CheckSubfoldersExistOnNetwork |                 |
| DisallowDragging |                 |
| NoUnicodeDrop | ; Tweak: set to 1 to suppress Unicode handling in drag'n'drop |
| !ClickSBToggleIP |                 |
| HideEmptyUserMenus | ; Tweak:        |
| !HideUnderscoredUDCs | ; Tweak:        |
| ScriptSmartDetect | ; Tweak: set to 1 to detect script in AB without :: |
| ScriptRecursionWarningOff | ; Tweak: set to 1 to turn off the recursion checker |
| ScriptsPath | ; Tweak: absolute or relative to app path |
| FolderSpecificSettings |                 |
| AssumeServersExist |                 |
| CheckServer3 |                 |
| ShowAllServers | ; Tweak:        |
| ShowHiddenShares | ; Tweak: set to 1 to always show all hidden shares |
| HistoryNoDupes |                 |
| HistoryPerTab |                 |
| HistoryRetainsSelections |                 |
| HistoryFirstIsOne | ; Tweak: set to 1 show oldest item as number one |
| AddToRecentDocs | ; Tweak: set to 1 to notify the system that an item has been opened |
| !AutoSelectMRUSubfolder | ; Tweak: set to 1 to select recent subfolder when going Up or Down |
| RelPath |                 |
| FindCacheResults |                 |
| FindFollowJunctions | ; Tweak: set to 1 to recurse Junctions on a File Find |
| ShowFolderSize |                 |
| ShowFolderSizeInList |                 |
| ShowItemCount |                 |
| ShowFolderCounts |                 |
| ShowSpaceUsed |                 |
| AutoRefresh |                 |
| WatchNetwork |                 |
| WatchRemovable |                 |
| WatchDuringFileOp |                 |
| !DisableSHChangeNotifyRegister | ; Tweak: set to 1 to disable auto-refresh on removable drives and non-current folders |
| RefreshTreeOnTabChange |                 |
| CacheSpecificIcons |                 |
| GenericIcons |                 |
| GenericIconsNetworkOnly |                 |
| GenericIconsForNetworkLocations | ; Tweak: fast generic icons for net locs anywhere in the interface |
| GenericIconsForCatalog | ; Tweak: fast generic icons for Catalog items |
| ShowIconOverlays |                 |
| ShowIconOverlaysOnNetwork | ; Tweak: show icon overlays also on network locations |
| !UseDPIAwareIconSizes | ; Tweak: set to 1 to adjust icon sizes to DPI settings |
| NoSharedFolderOverlays | ; Tweak: set to 1 to hide the hand overlays |
| ExtractEmbeddedIcons |                 |
| LinenumDigits |                 |
| SetFocusToListAfterCatalog | ; Tweak: auto-focus the list after left-clicking a catalog item |
| PopupFullFavMenu | ; Tweak: popup full favorites menu on right-click in tree |
| PopupMenusAtSelection | ; Tweak: popup menus at selected control or item |
| TreeRowForAutoScroll | ; Tweak: auto-position of selected tree node after auto-scrolling into view |
| TreeRowForDblClickScroll | ; Tweak: position of selected tree node after double click in the white |
| TreeNodeIndent | ; Tweak: increase tree node indent in pixels |
| !TreeItemDistY | ; Tweak: increase tree/catalog/list row height in pixels |
| !CatalogItemDistY |                 |
| !ListItemDistY |                 |
| ListNoAutoHoriScroll |                 |
| ListFullNameSelect |                 |
| !UDCNoMenuIcons | ; Tweak: set to 1 to suppress UDC menu icons |
| ShowFullPathsInOpenWith |                 |
| StartPathPerm |                 |
| StartPathPermExpand |                 |
| OpenStartPathInNewTab |                 |
| AllowMultipleInstances |                 |
| AlwaysNewInstance |                 |
| !XButtonSupport | ; Tweak: set to 1 if mouse button 4 & 5 do not work |
| NoPropertiesStartup | ; Tweak: set to 1 to never start with a preview |
| StartupMinimized |                 |
| MinimizeToTray |                 |
| !MinimizeToTrayOnXClose |                 |
| !PromptOnXClose | ; Tweak: set to 1 to get nagged by an 'Exit XYplorer now?' prompt. |
| IconFile |                 |
| CacheServers |                 |
| PrivateHistory |                 |
| KeepLastPaths |                 |
| ForgetHistory |                 |
| ForgetTabs |                 |
| ForgetMRU |                 |
| HotKeyShowApp | ; Tweak: one char (A-Z, 0-9) used for hotkey Win+[ ] to show app |
| SaveSettingsOnExit |                 |
| ClrBackTree |                 |
| ClrTextTree |                 |
| ClrHilite |                 |
| ClrBoxed |                 |
| ClrTabCurrent |                 |
| ClrTabOther |                 |
| ClrTabCurrentBack |                 |
| ClrTabOtherBack |                 |
| ClrBtnfacePrev |                 |
| ShadeInactivePane |                 |
| ClrInactivePane |                 |
| TabKeyPanes |                 |
| PaneRubberStyle |                 |
| TagStyle |                 |
| CEA\_ListRightClickOnWhite | ; Tweak: 0      |
| CEA\_MouseBack | ; Tweak: 0      |
| CEA\_MouseForward | ; Tweak: 0      |
| FopInBackground |                 |
| BackgroundedFileOps |                 |
| FopAutoQueue |                 |
| !BJHideCompleted |                 |
| FileOpProgressModeless |                 |
| NoDeleteConfirmation |                 |
| PreservePermissionsOnMove |                 |
| !RepOFCur |                 |
| !RepOFDate |                 |
| !RepOFAppend |                 |
| !RepLFOnOversized |                 |
| BackupOnNameCollision |                 |
| BackupPreserveItemDates |                 |
| BackupLogging |                 |
| BackupPopStats |                 |
| ShowImageInfos |                 |
| ShowTextInfos |                 |
| ShowRawViewInfos |                 |
| Tail    |                 |
| Zoom    |                 |
| Bord    |                 |
| HighQualityImageResampling |                 |
| Grid    |                 |
| PreviewMaxArea | ; Tweak: max area of previewed images, 0  |
| LoopMedia |                 |
| AutoPlay |                 |
| PlayFirstSecs |                 |
| CountFirstSecs |                 |
| KeepPlayingOnPanelDown |                 |
| AudioPreviewWithPanelDown |                 |
| PreviewStaticFrame |                 |
| SkipIntroMilliSeconds |                 |
| ShrinkToFit |                 |
| !MDBUFullScreen |                 |
| !MDBUPdfLarge |                 |
| FullBlack |                 |
| FullZoom |                 |
| FullName |                 |
| FullImagesOnly |                 |
| FontSample |                 |
| FontSampleSize |                 |
| EnSrvMap |                 |
| MapFrom |                 |
| MapTo   |                 |
| ShowWebPreviewInfoBars | ; Tweak: show HTML doc title in preview |
| !HTMLShowTitle |                 |
| TPWrap  |                 |
| ReplaceTabsBySpaces |                 |
| DisableMediaPreviewShortcuts |                 |
| PreviewTexts |                 |
| PreviewWebOffice |                 |
| PreviewFonts |                 |
| PreviewImages |                 |
| PreviewMedia |                 |
| !NoPrevI |                 |
| !NoPrevAV |                 |
| !NoPrevHTML |                 |
| NoPrevText |                 |
| NoPrevFont |                 |
| NoPrevShell | ; Tweak: exclude file types from shell preview, eg: mht.url |
| NoPrevRaw | ; Tweak: exclude file types from Raw View |
| TextPreviewCustomExtensions | ; Tweak: all extension lists dot-separated: bim.bam.bum |
| FontPreviewCustomExtensions |                 |
| ImagePreviewCustomExtensions |                 |
| MediaPreviewCustomExtensions |                 |
| OfficePreviewCustomExtensions |                 |
| AudioPreviewCustomExtensions |                 |
| VideoPreviewCustomExtensions |                 |
| VectorPreviewCustomExtensions |                 |
| ArchivePreviewCustomExtensions |                 |
| ExePreviewCustomExtensions |                 |
| DropTargetCustomExtensions |                 |
| FullScreenCustomExtensions |                 |
| !AudioMCICustomExtensions |                 |
| FileTipOfTheDay | ; Tweak: name of Tip of the Day file |
| StartPathNewTab | ; Tweak: default start location for a new tab |
| NewTabNextToCurrent |                 |
| ActivateLeftTabOnClosing |                 |
| !TabCycleMRU |                 |
| MaxNumTabs |                 |
| DelaySelectHoveredTab |                 |
| TabWidthMax |                 |
| FlexyTabs |                 |
| TabKeepEmpty |                 |
| TabCapDisplay |                 |
| TabCapCustom |                 |
| !TabXClose |                 |
| TabOnDblClick |                 |
| TabVisualStyle |                 |
| !TabIPVisualStyle | ; Tweak: IP tabs: 0  |
| TabYellow |                 |
| PortableTabs | ; Tweak: set to 1 to store paths relative to app path |

## FileInfoTips ##
| **Key** | **Description** |
|:--------|:----------------|
| ShowInfoTip |                 |
| ShowInfoTipCustom |                 |
| FileInfoTipNetwork |                 |
| ShowMP3Tip |                 |
| FileInfoTipHoverIcon |                 |
| FileInfoTipHoldShift | ; Tweak: set to 1 to show File Info Tips only if the Shift key is held |
| InplaceTips |                 |
| InfoTipVisList |                 |
| InfoTipVisListExtra |                 |
| InfoTipDelayInitial |                 |

## Thumbs ##
| **Key** | **Description** |
|:--------|:----------------|
| ThumbSizes | ; Tweak: comma-separated list of values used for width and height in pixels |
| Width   |                 |
| Height  |                 |
| Width1  |                 |
| Height1 |                 |
| Width2  |                 |
| Height2 |                 |
| ColumnWidthMin |                 |
| Cache   |                 |
| CacheFind |                 |
| CreateAllAtOnce |                 |
| MaxArea | ; Tweak: max area of thumbed images, 0  |
| CacheDir |                 |
| FolderThumbs |                 |
| FolderThumbsShell | ; Tweak: let shell do it |
| ShowIcon |                 |
| ShowPicSize |                 |
| ThumbsShell |                 |
| ThumbsMDBU |                 |
| !ThumbsMDBUr |                 |
| SuperFastThumbs |                 |

## Undo ##
| **Key** | **Description** |
|:--------|:----------------|
| Log     |                 |
| Remember |                 |
| MaxLog  |                 |
| DateFormat |                 |
| PromptUndo |                 |
| PromptNonEmpty |                 |
| PromptBeforeDelete |                 |
| DeleteToRecycler |                 |
| ToolbarPopsActions |                 |
| ToolbarMenu |                 |
| OptionsInMenu |                 |
| ReverseNumbers |                 |

## FileView ##
| **Key** | **Description** |
|:--------|:----------------|
| Font    |                 |
| LineNum |                 |
| Wrap    |                 |
| Hex     |                 |
| Extract |                 |
| Inter   |                 |

## Report ##
| **Key** | **Description** |
|:--------|:----------------|
| CopyRecurse |                 |
| CopyOnlySel |                 |
| InclDate |                 |
| IncludeHeaders |                 |
| InclSpecs |                 |
| optRepFtype |                 |
| optRepFver |                 |
| optSep  |                 |
| Sep     |                 |
| Path    |                 |
| File    |                 |
| ClassicDumpTableWidth |                 |

## Font ##
| **Key** | **Description** |
|:--------|:----------------|
| Name    |                 |
| MilliSize |                 |
| Bold    |                 |
| Italic  |                 |
| DialogFont |                 |
| InterfaceFont |                 |
| MonospaceFont |                 |
| MonospaceFontMilliSize |                 |
| EditorFont |                 |
| EditorFontMilliSize |                 |

## NewTemplates ##
; Tweak: 3 templates for New Folder default names
; Tweak: 3 templates for New File default names
| **Key** | **Description** |
|:--------|:----------------|
| Version |                 |
| Folder0 |                 |
| Folder1 |                 |
| Folder2 |                 |
| File0   |                 |
| File1   |                 |
| File2   |                 |
| NewFolderTemplateIndex |                 |

## ListDateFormats ##
; Tweak: edit the following as you need
| **Key** | **Description** |
|:--------|:----------------|
| Version |                 |
| 3       |                 |
| 4       |                 |
| 5       |                 |
| 6       |                 |
| 7       |                 |
| 8       |                 |

## ListTimeFormats ##
; Tweak: edit the followig as you need
| **Key** | **Description** |
|:--------|:----------------|
| Version |                 |
| 3       |                 |
| 4       |                 |
| 5       |                 |

## !FilenameToID3 ##
; Tweak: change the order of fields as you like
| **Key** | **Description** |
|:--------|:----------------|
| 1       |                 |
| 2       |                 |
| 3       |                 |

## ID3toFilename ##
; Tweak: idem
| **Key** | **Description** |
|:--------|:----------------|
| 1       |                 |
| 2       |                 |
| 3       |                 |

## Styles ##
| **Key** | **Description** |
|:--------|:----------------|
| TreeStyle |                 |

## ListBrowse ##
| **Key** | **Description** |
|:--------|:----------------|
| ClrBack |                 |
| ClrText |                 |
| ClrGrid |                 |
| ClrSortCol |                 |
| ClrFocRow |                 |
| ClrSelRow |                 |
| PosListCustom |                 |

## ListFind ##
| **Key** | **Description** |
|:--------|:----------------|
| ClrBack |                 |
| ClrText |                 |
| ClrGrid |                 |
| ClrSortCol |                 |
| ClrFocRow |                 |
| ClrSelRow |                 |
| PosListCustom |                 |

## ListDrives ##
| **Key** | **Description** |
|:--------|:----------------|
| ClrBack |                 |
| ClrText |                 |
| ClrGrid |                 |
| ClrSortCol |                 |
| ClrFocRow |                 |
| ClrSelRow |                 |
| PosListCustom |                 |

## ListNetwork ##
| **Key** | **Description** |
|:--------|:----------------|
| ClrBack |                 |
| ClrText |                 |
| ClrGrid |                 |
| ClrSortCol |                 |
| ClrFocRow |                 |
| ClrSelRow |                 |
| PosListCustom |                 |

## ListRecycler ##
| **Key** | **Description** |
|:--------|:----------------|
| ClrBack |                 |
| ClrText |                 |
| ClrGrid |                 |
| ClrSortCol |                 |
| ClrFocRow |                 |
| ClrSelRow |                 |
| PosListCustom |                 |

## Find ##
| **Key** | **Description** |
|:--------|:----------------|
| Mode    |                 |
| FullPath |                 |
| Case    |                 |
| InclSubs |                 |
| Inverted |                 |
| Fuzzy   |                 |
| FollowFolderLinks |                 |
| SelectedLocations |                 |
| WholeWords |                 |
| AutoSync |                 |
| FuzzIndex |                 |
| TypeFilter |                 |
| RangeNot |                 |
| StartOfUnit |                 |
| SizeFolders |                 |
| Date    |                 |
| DateRange |                 |
| DateNum |                 |
| DateUnit |                 |
| DateFrom |                 |
| DateTo  |                 |
| LeaveEmpty |                 |
| SizeMin |                 |
| SizeMax |                 |
| SizeUnit |                 |
| AttrFindCheck |                 |
| AttrFindNotCheck |                 |
| ContText |                 |
| CaseSens |                 |
| Hex     |                 |
| MatchUnicode |                 |
| ContTextInvert |                 |
| ContWildcards |                 |
| Mind0   |                 |
| Mind1   |                 |
| Mind2   |                 |
| Mind3   |                 |
| Mind4   |                 |
| Mind5   |                 |

## ExcludeFolders2 ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## Named ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |
| Named0  |                 |

## LookIn ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |
| LookIn0 |                 |

## FindTemplates ##
| **Key** | **Description** |
|:--------|:----------------|
| LastTemplate |                 |
| LoadResults |                 |
| RunAtOnce |                 |
| Location |                 |
| ExcludedFolders |                 |
| SaveResults |                 |

## CustomButtons ##
| **Key** | **Description** |
|:--------|:----------------|
| Version |                 |
| Count   |                 |

## mruBrowse ##
| **Key** | **Description** |
|:--------|:----------------|
| Latest  |                 |
| Count   |                 |
| 1       |                 |

## mruGoto ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruSelectionFilter ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruVisualFilter ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruKeepParticularChars ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruSearchReplace ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruRegExpRename ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruBatchRename ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## mruOpenedItems ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## Favorites ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## FavFiles ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## FileAssoc ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |
| 1       |                 |

## FileOpTo ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## ColorFilter ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |
| 1       |                 |
| 2       |                 |
| 3       |                 |
| 4       |                 |
| 5       |                 |
| 6       |                 |
| 7       |                 |
| 8       |                 |
| 9       |                 |
| 10      |                 |
| 11      |                 |
| 12      |                 |

## HiliteFolder ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## HiliteBranch ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |

## Aliases ##
| **Key** | **Description** |
|:--------|:----------------|
| Count   |                 |