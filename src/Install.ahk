#Include RunAsAdmin.ahk
RunAsAdmin()

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryAll, ,Paste Directory for All Level
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryAll\command, , %A_ScriptDir%\all.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryAll, icon, %A_ScriptDir%\all.exe

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryOne, ,Paste Directory for One Level
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryOne\command, , %A_ScriptDir%\one.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryOne, icon, %A_ScriptDir%\one.exe

RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Directory\shell\PasteDirectoryCopy, ,Copy Directory
RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Directory\shell\PasteDirectoryCopy\command, , %A_ScriptDir%\copy.exe
RegWrite, REG_SZ, HKEY_CLASSES_ROOT\Directory\shell\PasteDirectoryCopy, icon, %A_ScriptDir%\copy.exe

MsgBox, 64, PasteDirectory, Installing Succeed!