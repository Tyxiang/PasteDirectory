RunAsAdmin()

RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryA
RegDelete, HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\PasteDirectoryO

MsgBox, 64, PasteDirectory, Uninstalling Succeed!


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