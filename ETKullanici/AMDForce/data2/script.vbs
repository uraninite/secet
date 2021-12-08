do
Set WshShell = WScript.CreateObject("WScript.Shell")
WScript.Sleep 400
WshShell.SendKeys "^{ESC}"
loop