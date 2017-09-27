@echo off
cls

set "funcdos=mambo"
EvilUpdater\EvilUpdater.bat
goto :eof

:erro
msg * Could not find EvilUpdater.exe!
exit