@echo off
title EvilUpdater Build Script with MinGW
color 57
goto menu
:menu
cls
echo.
echo                    EvilUpdater Build Script with MinGW
echo.
echo ================================================================================
echo.
echo.
echo  What do you want to do?
echo.
echo.
echo.
echo.
echo  1 - Build EvilUpdater (and make obj files for building again faster)
echo.
echo  2 - Rebuild EvilUpdater (cleans obj files and build again from zero)
echo.
echo  3 - Clean Obj Files (for commiting)
echo.
echo  Q - Exit
echo.
echo.
echo ================================================================================
set /p "opcao=(1,2,3,Q) ->             -> "
if /i "%opcao%" == "1" cls & echo. & mingw32-make prebuild & mingw32-make build & goto afterthat
if /i "%opcao%" == "2" cls & echo. & mingw32-make rebuild & goto afterthat
if /i "%opcao%" == "3" cls & echo. & mingw32-make clean & goto afterthat
if /i "%opcao%" == "Q" exit
goto menu

:afterthat
echo.
echo.
echo.
echo.
echo  Press any key to end the aplication...
pause>nul
exit