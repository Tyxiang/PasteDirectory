 "D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon ..\icon.ico /in ..\Install.ahk /out Install.exe
 "D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon ..\icon.ico /in ..\Uninstall.ahk /out Uninstall.exe
 "D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon ..\icon.ico /in ..\all.ahk  /out all.exe
 "D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon ..\icon.ico /in ..\one.ahk /out one.exe

copy /Y ..\README.md
copy /Y ..\sample.txt

_7z.exe a PasteDirectory.zip *.* -x@_x.ini

_u.bat

pause