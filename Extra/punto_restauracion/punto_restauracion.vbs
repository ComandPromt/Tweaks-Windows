
'---------------------------------------------------------
'Description- This script makes a Windows XP system restore point
'The restore point is named with user input

Option Explicit
Dim oSysRestore, sName, makeRestorePoint, sMsg
sMsg= msgBox("Este script creara un punto de restauracion. Continuar?", vbYesNo)
If sMsg = vbNo then wScript.Quit
Set oSysRestore = GetObject( "winmgmts:\\.\root\default:Systemrestore" )
sName = inputBox("Escriba el nombre para el punto de restauracion." & vbCrlf & "El dato sera incluido.", "Name the restore point")
if sName ="" then wScript.Quit
makeRestorePoint = oSysRestore.CreateRestorePoint( sName, 0, 100 )
msgBox "El punto de restauracion llamado " & sName & " ha sido creado"
set oSysRestore = Nothing
wscript.Quit
