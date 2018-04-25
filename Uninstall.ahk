#Include RunAsAdmin.ahk
RunAsAdmin()

RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA
RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO

MsgBox, 64, PasteDirectory, Uninstalling Succeed!