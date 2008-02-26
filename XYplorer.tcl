!TCL=784, TheQwerty
!TITLE=XYplorer
!SORT=N
!CHARSET=ANSI

!TEXT=<clipboard>
<clipboard>
!
!TEXT=<curbase>
<curbase>
!
!TEXT=<curext>
<curext>
!
!TEXT=<curfolder>
<curfolder>
!
!TEXT=<curpath>
<curpath>
!
!TEXT=<curpath_s>
<curpath_s>
!
!TEXT=<curtitle>
<curtitle>
!
!TEXT=<curver>
<curver>
!
!TEXT=<dyyyymmddhhnnss>
<dyyyymmddhhnnss>
!
!TEXT=<myyyymmddhhnnss>
<myyyymmddhhnnss>
!
!TEXT=<xydata>
<xydata>
!
!TEXT=<xyexe>
<xyexe>
!
!TEXT=<xypath>
<xypath>
!
!TEXT=#ID
#[ID];
!
!TEXT=BackupTo
BackupTo([Location=Current Path], [Source=Current Selection]);
!
!TEXT=Box
Box([RRGGBB=""/Off]);
!
!TEXT=BR
BR(NewLine);
!
!TEXT=CopyText
CopyText(Text, [Append?:|a=""/Copy]);
!
!TEXT=CopyTextA
//DEPRECATED: Replaced by CopyText();
CopyTextA(Text);
!
!TEXT=CopyTo
CopyTo(Location, [Source=Current Selection]);
!
!TEXT=Filter
Filter([Pattern="|"/Off]);
!
!TEXT=Focus
Focus([Control:List|Tree|Address Bar|Catalog]);
!
!TEXT=GoTo
GoTo(Location);
!
!TEXT=Highlight
Highlight([Color=""/Off]);
!
!TEXT=Input
Input(VariableName, [Prompt=""], [DefaultValue=""], [MultiLine?:|m=""/Single]);
!
!TEXT=InputFile
InputFile(VariableName, [Path=XY's Path], [Extension=""], [Prompt="Open"]);
!
!TEXT=InputFolder
InputFolder(VariableName, [Path=My Documents], [Prompt=""]);
!
!TEXT=Load
Load(Resource, [Execute:|#[#]|[Label]=""/Display menu], [ResourceType:f|s=f/File]);
!
!TEXT=LoadScriptFile
//DEPRECATED: Replaced by Load();
LoadScriptFile(ScriptFile, [Execute:|#[#]|[Label]=""/Display menu]);
!
!TEXT=MoveTo
MoveTo(Location, [Source=Current Selection]);
!
!TEXT=Msg
Msg([Text=""]);
!
!TEXT=Open
Open([Item="explorer.exe <xypath>"]);
!
!TEXT=OpenWith
OpenWith([Application="explorer.exe"], [Multiple?:s|m]);
!
!TEXT=Push
//DEPRECATED: Replaced by Try();
Push();
!
!TEXT=Rename
Rename([Mode:bat|re|sr|kc|ext], [Pattern=""/Show Dialog], [Preview?:|p=""/Single]);
!
!TEXT=Sel
Sel([Type:|[|+|-][#]|"[pattern]"|a|i|f=""/Deselect All], [Count=1]);
!
!TEXT=SelFilter
SelFilter([Pattern=""/All], [Type:|f|d=""/Both], [Column="Name"]);
!
!TEXT=SelPos
//DEPRECATED: Replaced by Sel();
SelPos([Type:|[|+|-][#]|"[pattern]"|a|i|f=""/Deselect All], [Count=1]);
!
!TEXT=SelTab
SelTab([Position:|[#]|+|-=""/Default]);
!
!TEXT=Sep
//DEPRECATED: No longer needed.
Sep(Separator);
!
!TEXT=Set
Set(VariableName, [Value=""]);
!
!TEXT=Setting
Setting(Setting, [Mode:1|0|r=1], [Permanent?:|p=""/Temporary]);
!
!TEXT=SettingP
SettingP(Setting, [Mode:1|0|r=1]);
!
!TEXT=SortBy
SortBy([Column="Name"], [Direction:|a|d|clk=Defined Default]);
!
!TEXT=Step...UnStep
Step();
\\^
UnStep();
!
!TEXT=Step
Step();
!
!TEXT=Sub
Sub(Label);
!
!TEXT=SwapNames
SwapNames();
!
!TEXT=Text
Text(Text, [Width=500], [Height=300], [Caption=""]);
!
!TEXT=Try
Try();
!
!TEXT=UnSet
UnSet(VariableName);
!
!TEXT=UnStep
UnStep();
!
!TEXT=UserInput
//DEPRECATED: Replaced by Input();
UserInput(VariableName, [Prompt=""], [DefaultValue=""]);
!
!TEXT=Write
//DEPRECATED: Replaced by Try();
Write();
!
