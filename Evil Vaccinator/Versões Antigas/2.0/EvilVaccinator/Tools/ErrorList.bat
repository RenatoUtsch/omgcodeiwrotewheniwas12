@echo off
if /i "%startfile%"=="func" goto program
goto error1
:program
if /i "%typeerror%"=="Digite o erro" goto start
if /i "%typeerror%"=="Type the Error" goto start
if /i "%typeerror%"=="Geben Sie den Fehler" goto start
goto error2
:start
mode con: cols=100 lines=35&color 1F
cls
title EvilVaccinator by LordEvil
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
echo    1 - %allerrors%
echo.
echo    2 - %return%
echo.
echo    Q - %optionQ%
echo.
echo.
set /p opcao=%typeerror%: 
if /i "%opcao%"=="E00547" goto E00547
if /i "%opcao%"=="E00565" goto E00565
if /i "%opcao%"=="E00583" goto E00583
if /i "%opcao%"=="E00652" goto E00652
if /i "%opcao%"=="E00775" goto E00775
if /i "%opcao%"=="Q" exit
if /i "%opcao%"=="1" goto run2
if /i "%opcao%"=="2" goto return
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
echo                                  --- %Unrecognizederror% ---
echo.
echo.
echo %presscontinue%
pause>nul
goto start
:E00547
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
type Tools\Errors\%error547%
echo.
echo %presscontinue%
pause>nul
goto start
:E00565
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
type Tools\Errors\%error565%
echo.
echo %presscontinue%
pause>nul
goto start
:E00583
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
type Tools\Errors\%error583%
echo.
echo %presscontinue%
pause>nul
goto start
:E00652
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
type Tools\Errors\%error652%
echo.
echo %presscontinue%
pause>nul
goto start
:E00775
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
type Tools\Errors\%error775%
echo.
echo %presscontinue%
pause>nul
goto start
:run2
cls
echo.
echo                                   EVIL VACCINATOR - %option4%
echo.
echo ====================================================================================================
echo.
type Tools\Errors\%error547%
echo.
type Tools\Errors\%error565%
echo.
type Tools\Errors\%error583%
echo.
type Tools\Errors\%error652%
echo.
type Tools\Errors\%error775%
echo.& echo.
echo %presscontinue%
pause>nul
goto start

rem ###############################################################################################################################################

:final
set "startfile=1"
exit

rem ###############################################################################################################################################

:return
set continue=A& set startfile=func
%HOMEDRIVE%\EvilVaccinator\EvilVaccinator.exe
goto :eof

rem ###############################################################################################################################################

rem Errors:

rem ###############################################################################################################################################

:error1
msg * Error E00547.
exit

rem ###############################################################################################################################################

:error2
msg * Error E00565.
set "startfile=1"
exit

