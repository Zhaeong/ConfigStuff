@echo off
d:
cd D:\Github\QuietWorld

start cmder 

cd bin

start cmder

rem for visual studio
rem start /B vsc.lnk

rem for emacs
rem emacs

"C:\Program Files (x86)\Vim\vim82\gvim.exe" -u "C:\bin\vimSettings" "D:\Github\QuietWorld\src\main.cpp" -O "D:\Github\QuietWorld\src\game.cpp"

exit