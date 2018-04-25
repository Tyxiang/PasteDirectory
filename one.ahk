Loop, parse, clipboard, `n, `r
{
    If FileExist(A_LoopField)
    {
        SplitPath, A_LoopField, OutFileName, OutDir
        FileCreateDir, %A_WorkingDir%\%OutFileName%
    }
}