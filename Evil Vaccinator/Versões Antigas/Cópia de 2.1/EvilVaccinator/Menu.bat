@echo off
cls
if /i "%startfile%"=="func" goto program
goto E00547

:program
mode con: cols=80 lines=25&color 1F
title EvilVaccinator by LordEvil
goto menuinicial

:menuinicial
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "Version %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo              1 - %option1%
echo                                                     4 - %option4%
echo.
echo              2 - %option2%
echo                                                     5 - %option5%
echo.
echo              3 - %option3%
echo                                                     6 - %optionr%
echo.
echo              Q - %optionq%
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
set /p opcao= (1,2,3,4,5,6,Q) :        -^> 
if /i "%opcao%"=="1" set startfile=func& set scantype=A& Scan.bat& goto :eof
if /i "%opcao%"=="2" set startfile=func& set scantype=B& Scan.bat& goto :eof
if /i "%opcao%"=="3" set startfile=func& set scantype=C& Scan.bat& goto :eof
if /i "%opcao%"=="4" set startfile=func& set scantype=D& Scan.bat& goto :eof
if /i "%opcao%"=="5" set startfile=func& ErrorList.bat& goto :eof
if /i "%opcao%"=="6" set startfile=func& set returnto=A& EvilVaccinator.cmd& goto :eof
if /i "%opcao%"=="Q" exit
goto menuinicial


rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Error Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:E00547
cls
msg * Error E00547!
exit