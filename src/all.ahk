Loop, parse, clipboard, `n, `r
{
    If InStr(FileExist(A_LoopField), "D") ;如果存在，且是个目录
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