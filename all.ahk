;RunAsAdmin()

Loop, parse, clipboard, `n, `r
{
    If InStr(FileExist(A_LoopField), "D")
    {
        SplitPath, A_LoopField, OutFileName, OutDir
        FileCreateDir, %A_WorkingDir%\%OutFileName%
        ;FileAppend, %A_WorkingDir%\%OutFileName% `n, log.txt
        Loop, Files, %A_LoopField%\*, DR
        {
             StringReplace, NewDir, A_LoopFilePath, %OutDir%,
             FileCreateDir, %A_WorkingDir%%NewDir%
             ;FileAppend, %A_WorkingDir%%NewDir% `n, log.txt
        }
    }
    else
    {
        FileCreateDir, %A_WorkingDir%\%A_LoopField%
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