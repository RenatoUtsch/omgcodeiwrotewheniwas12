@echo off
cls
if not exist "EvilUpdater.exe" goto erro
set "mambo=B"
EvilUpdater\EvilUpdater.exe
goto :eof

:erro
msg * Could not find EvilUpdater.exe!
exit