#Include RunAsAdmin.ahk
RunAsAdmin()

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA, ,Paste Directory for All Level
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA\command, , %A_ScriptDir%\all.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA, icon, %A_ScriptDir%\all.exe

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO, ,Paste Directory for One Level
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO\command, , %A_ScriptDir%\one.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO, icon, %A_ScriptDir%\one.exe

MsgBox, 64, PasteDirectory, Installing Succeed!