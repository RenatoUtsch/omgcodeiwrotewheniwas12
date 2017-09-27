@echo off
cls
if not exist "EvilUpdater.exe" goto erro
set "funcdos=mambo"& EvilUpdater.bat
goto :eof

:erro
msg * Could not find EvilUpdater.exe!
exit