Set WshShell = Wscript.CreateObject("Wscript.Shell")
Set objArgs = Wscript.Arguments
arg1 = objArgs(0)
arg2 = objArgs(1)
Wscript.Echo objArgs(0)
WshShell.SendKeys "start Densidade2.8.4.exe"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "1"
WshShell.SendKeys "{ENTER}" 
WshShell.SendKeys "S"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys arg1
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "N"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "N"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "blanklist"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "linhak2021"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "linhal2021"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "2"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "11" + "{ENTER}" + "20" + "{ENTER}" + "21" + "{ENTER}" + "82" + "{ENTER}" + "1" + "{ENTER}" + "0" + "{ENTER}" + "1" + "{ENTER}" + "list" + "{ENTER}" + "linhak2021" + "{ENTER}" + "linhal2021" + "{ENTER}" + "2" + "{ENTER}" + "11" + "{ENTER}" + "20" + "{ENTER}" + "21" + "{ENTER}" + "82" + "{ENTER}" + arg2 + "1"