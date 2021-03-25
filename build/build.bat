cd ..
cd src
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico  /in Install.ahk      /out ..\bin\Install.exe
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico  /in Uninstall.ahk    /out ..\bin\Uninstall.exe
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico  /in all.ahk          /out ..\bin\all.exe
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico  /in one.ahk          /out ..\bin\one.exe
copy /Y ..\README.md ..\bin\README.md
pause