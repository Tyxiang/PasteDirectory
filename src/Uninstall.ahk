#Include RunAsAdmin.ahk
RunAsAdmin()

RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryAll
RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryOne
RegDelete, HKEY_CLASSES_ROOT\Directory\shell\PasteDirectoryCopy

MsgBox, 64, PasteDirectory, Uninstalling Succeed!