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
!TEXT=<curitem>
<curitem>
!
!TEXT=<curitempath>
<curitempath>
!
!TEXT=<curname>
<curname>
!
!TEXT=<curpath>
<curpath>
!
!TEXT=<curpath_s>
<curpath_s>
!
!TEXT=<curtitle>
//DEPRECATED: Replaced by <curname>
<curtitle>
!
!TEXT=<curver|pattern *>
<curver|pattern *>
!
!TEXT=<date yyyymmddhhnnss>
<date yyyymmddhhnnss>
!
!TEXT=<datea yyyymmddhhnnss>
<datea yyyymmddhhnnss>
!
!TEXT=<datec yyyymmddhhnnss>
<datec yyyymmddhhnnss>
!
!TEXT=<datem yyyymmddhhnnss>
<datem yyyymmddhhnnss>
!
!TEXT=<focitem>
<focitem>
!
!TEXT=<srcbase>
<srcbase>
!
!TEXT=<srcdatea yyyymmddhhnnss>
<srcdatea yyyymmddhhnnss>
!
!TEXT=<srcdatec yyyymmddhhnnss>
<srcdatec yyyymmddhhnnss>
!
!TEXT=<srcdatem yyyymmddhhnnss>
<srcdatem yyyymmddhhnnss>
!
!TEXT=<srcext>
<srcext>
!
!TEXT=<srcitem>
<srcitem>
!
!TEXT=<srcname>
<srcname>
!
!TEXT=<srcver>
<srcver>
!
!TEXT=<xydata>
<xydata>
!
!TEXT=<xyexe>
<xyexe>
!
!TEXT=<xyini>
<xyini>
!
!TEXT=<xypane>
<xypane>
!
!TEXT=<xypath>
<xypath>
!
!TEXT=<xyver>
<xyver>
!
!TEXT=#ID
#[ID];
!
!TEXT==
Variable = [Value=""], [Resolve?:|r/""=No];
!
!TEXT=AddStr
//DEPRECATED: Replaced by String1 . String2
AddStr(Variable, [String1=""/Blank], ..., [String10=""/Blank]);
!
!TEXT=Asc()
Asc(Char)
!
!TEXT=Assert
Assert(Condition, [Message], [Continue?:0|1]);
!
!TEXT=BackupTo
BackupTo([Location=Current Path], [Source=Current Selection]);
!
!TEXT=Box
Box([Color=""/Off], [Folder=""/Current]);
!
!TEXT=BR
BR(NewLine);
!
!TEXT=Break
Break([Levels:=1]);
!
!TEXT=Chr()
Chr(charCode)
!
!TEXT=Comment
Comment([Comment=""/Remove], [Item=""/Current Selection]);
!
!TEXT=Compare()
Compare(A, B, [Method:b|i|n|v])
!
!TEXT=Confirm()
Confirm(Message, [LineBreak="<br>"])
!
!TEXT=Continue
Continue([Levels:=1]);
!
!TEXT=CopyItem
CopyItem([Item=<curitem>], [Copy="Use Suffix"]);
!
!TEXT=CopyText
CopyText(Text, [Append?:|a=""/Copy], [LineBreak="<br>"]);
!
!TEXT=CopyTextA
//DEPRECATED: Replaced by CopyText
CopyTextA(Text);
!
!TEXT=CopyTo
CopyTo(Location, [Source=Current Selection], [RootPath=None]);
!
!TEXT=Delete
Delete([Recycle?:1|0], [Confirm?:|1|0=""/User Setting], [Item=Current Selection]);
!
!TEXT=Download
Download(Source, [Target="Download-yyyymmdd.html"], [Options:|o|i=""/Prompt on Collision]);
!
!TEXT=Echo
Echo([Text=""]);
!
!TEXT=End
End(Expression, [Message], [Scope:0/"All"|1/"This"]);
!
!TEXT=Eval()
Eval(Expression)
!
!TEXT=Exists()
Exists(Item)
!
!TEXT=Filter
Filter([Pattern="|"/Off]);
!
!TEXT=Focus
Focus([Control:List|Tree|Address Bar|Catalog]);
!
!TEXT=GetInfo()
GetInfo(Info, [Params])
!
!TEXT=GetKey
GetKey(Variable, Key, Section, [File=""/XY Config]);
!
!TEXT=GetToken()
GetToken(String, [Index=1], [Delimiter=" ")
!
!TEXT=Global
Global(Var1, ..., Var10);
!
!TEXT=GoTo
GoTo(Location);
!
!TEXT=Highlight
Highlight([Color=""/Off], [Folder=""/Current]);
!
!TEXT=HTML()
HTML(Content, [Width=600], [Height=400], [Caption="XYplorer"])
!
!TEXT=Incr
Incr(Variable, [Value=Variable], [Increment="1"]);
!
!TEXT=Input
//DEPRECATED: Replaced by Input()
Input(Variable, [Prompt=""], [DefaultValue=""], [Style:|m|w=""/Single]);
!
!TEXT=Input()
Input([Title], [Notes], [Default], [Style:s|m|w], [Cancel], [Width=600], [Height=400])
!
!TEXT=InputFile
InputFile(Variable, [Path=XY's Path], [Extension=""], [Prompt="Open"]);
!
!TEXT=InputFolder
InputFolder(Variable, [Path=XY's Path], [Prompt=""]);
!
!TEXT=InternetFlags
InternetFlags(Setting, Mode:1|0);
!
!TEXT=Load
Load(Resource, [Labels:|#[#]|[Label]|[List]=""|*/Display menu], [ResourceType:f|s=f/File]);
!
!TEXT=LoadScriptFile
//DEPRECATED: Replaced by Load
LoadScriptFile(ScriptFile, [Execute:|#[#]|[Label]=""/Display menu]);
!
!TEXT=LoadSearch
LoadSearch(Template, [Options:rlex=rl/Load Location & Execute]);
!
!TEXT=LoadTree
LoadTree([Paths=""/<curpath>], [Modify:0/Load|1/Add|2/Remove]);
!
!TEXT=MD5()
MD5(String)
!
!TEXT=MoveTo
MoveTo(Location, [Source=Current Selection], [RootPath=None]);
!
!TEXT=Msg
Msg([Text=""], [Buttons:0/OK|1/OKCancel=0/OK], [LineBreak="<br>"]);
!
!TEXT=New
New([Name], [Type:File|Dir=File], [Source], [Rename?:|r=""/No Rename Mode]);
!
!TEXT=Open
Open([Item="explorer.exe <xypath>"], [Association:|w/Windows=""/PFA]);
!
!TEXT=OpenWith
OpenWith([Application="explorer.exe"], [Multiple?:s|m], [Item]);
!
!TEXT=Push
//DEPRECATED: Replaced by Try
Push();
!
!TEXT=Quote()
Quote([String])
!
!TEXT=ReadFile()
ReadFile([File=Focused Item], [Mode:t|b])
!
!TEXT=ReadURL
ReadURL(Variable, URL);
!
!TEXT=RegExReplace
RegExReplace(Variable, String, Pattern, [Replacement], [MatchCase?:0|1]);
!
!TEXT=Rename
Rename([Mode:b|r|s|k|e], [Pattern=""/Show Dialog], [Preview?:|p=""/Single], [Items:""/Selection]);
!
!TEXT=Repalce
Replace(Variable, String, Query, [Replacement], [MatchCase?:0|1]);
!
!TEXT=Report()
Report([Template=""/List Layout], [OnlySelected:0|1], [Header=""], [Footer=""])
!
!TEXT=Rotate
Rotate([Mode:90|180|270|h|v], [Source:""=Focused], [Target:""=Source], [LosslessOnly?:0|1]);
!
!TEXT=Run
Run(Command, [CWD=""/<curpath>], [Wait?:0|1]);
!
!TEXT=Sel
Sel([Type:|[|+|-][#]|"[pattern]"|a|i|f=""/Deselect All], [Count=1]);
!
!TEXT=Self
Self(Variable, [Info:|File|Path|Base|Script=""/Nothing]);
!
!TEXT=SelFilter
SelFilter([Pattern=""/All], [Type:|f|d=""/Both], [Column="Name"]);
!
!TEXT=SelPos
//DEPRECATED: Replaced by Sel
SelPos([Type:|[|+|-][#]|"[pattern]"|a|i|f=""/Deselect All], [Count=1]);
!
!TEXT=SelTab
SelTab([Position:|[#]|+|-=""/Default], [MRU?:0|1]);
!
!TEXT=Sep
//DEPRECATED: No longer needed.
Sep(Separator);
!
!TEXT=Set
Set(Variable, [Value=""], [Resolve?:|r/""=No]);
!
!TEXT=SetKey
SetKey(Value, Key, Section, [File=""/XY Config]);
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
!TEXT=Status
Status([Text=""], [Color="0046DA"], [Icon:ready|progress|alert|stop]);
!
!TEXT=Step...UnStep
Step();
\\^
UnStep();
!
!TEXT=Step
Step();
!
!TEXT=StrLen
StrLen(Variable, String);
!
!TEXT=StrPos
StrPos(Variable, String, Query, [Start="0"], [MatchCase?:0|1]);
!
!TEXT=StrRepeat()
StrRepeat(String, [Times=0])
!
!TEXT=Sub
Sub(Label);
!
!TEXT=SubStr
SubStr(Variable, String, [Start="0"], [Length="[End]"]);
!
!TEXT=SwapNames
SwapNames();
!
!TEXT=Tag
Tag([TagID=0], [Item=""/Current Selection]);
!
!TEXT=Text
Text(Text, [Width=500], [Height=300], [Caption=""], [Wrap?:|w=""/No Wrapping], [LineBreak="<br>"]);
!
!TEXT=TimeStamp
TimeStamp([Type:c|m|a=cma/All], [Date=""/Now], [Item=""/List Selection]);
!
!TEXT=Try
//DEPRECATED: Replaced by #752
Try();
!
!TEXT=UnSet
UnSet(Variable);
!
!TEXT=UnStep
UnStep();
!
!TEXT=URLDecode()
URLDecode(String, [Raw?:0|1])
!
!TEXT=URLEncode()
URLEncode(String, [Raw?:0|1])
!
!TEXT=UTF8Decode()
UTF8Decode(String)
!
!TEXT=UTF8Encode()
UTF8Encode(String)
!
!TEXT=UserInput
//DEPRECATED: Replaced by Input()
UserInput(Variable, [Prompt=""], [DefaultValue=""]);
!
!TEXT=Write
//DEPRECATED: Replaced by Try()
Write();
!
!TEXT=WriteFile()
WriteFile(File, Data, [OnExist:o|a|n], [Mode:t|ta|tu|b])
!