"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Install.ahk
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in Uninstall.ahk
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in all.ahk 
"D:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /icon icon.ico /in one.ahk

copy /Y Install.exe ..\Release\PasteDirectory\
copy /Y Uninstall.exe ..\Release\PasteDirectory\
copy /Y README.md ..\Release\PasteDirectory\
copy /Y all.exe ..\Release\PasteDirectory\
copy /Y one.exe ..\Release\PasteDirectory\
copy /Y sample.txt ..\Release\PasteDirectory\