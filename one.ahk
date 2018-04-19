;RunAsAdmin()

Loop, parse, clipboard, `n, `r
{
    If FileExist(A_LoopField)
    {
        SplitPath, A_LoopField, OutFileName, OutDir
        FileCreateDir, %A_WorkingDir%\%OutFileName%
    }
}



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