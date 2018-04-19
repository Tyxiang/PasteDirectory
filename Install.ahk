RunAsAdmin()

;MsgBox, %A_ScriptDir%

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA, ,Paste Directory for All Level
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA\command, , %A_ScriptDir%\all.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA, icon, %A_ScriptDir%\all.exe

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO, ,Paste Directory for One Level
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO\command, , %A_ScriptDir%\one.exe
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO, icon, %A_ScriptDir%\one.exe

MsgBox, 64, PasteDirectory, Installing Succeed!


RunAsAdmin(){
    ;以管理员权限运行脚本
    full_command_line := DllCall("GetCommandLine", "str")
    if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
    {
        try
        {
            if A_IsCompiled
                Run *RunAs "%A_ScriptFullPath%" /restart
            else
                Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
        }
        ExitApp
    }
}