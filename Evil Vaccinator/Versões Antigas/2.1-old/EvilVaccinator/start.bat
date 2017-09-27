
@echo off
if /i "%startfile%"=="func" goto program
exit

:program
mode con: cols=80 lines=25&color 1F
title EvilVaccinator by LordEvil
call ..\EvilUpdater\config\version.bat
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
echo.
echo              2 - %option2%
echo.
echo              3 - %option3%
echo.
echo              4 - %option4%
echo.
echo              5 - %optionr%
echo.
echo              Q - %optionq%
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
set /p opcao= (1,2,3,4,5,Q) :        -^> 
if /i "%opcao%"=="1" set startfile=func& set scantype=A& call scan.bat& goto :eof
if /i "%opcao%"=="2" set startfile=func& set scantype=B& call scan.bat& goto :eof
if /i "%opcao%"=="3" set startfile=func& set scantype=C& call scan.bat& goto :eof
if /i "%opcao%"=="4" set startfile=func& set scantype=D& call scan.bat& goto :eof
if /i "%opcao%"=="5" set startfile=func& set returnto=A& call EvilVaccinator.cmd& goto :eof
if /i "%opcao%"=="Q" exit
goto menuinicial2
