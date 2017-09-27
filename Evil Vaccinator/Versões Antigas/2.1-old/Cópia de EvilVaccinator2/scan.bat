@echo off
if /i "%startfile%"=="func" goto program
exit

:program
ode con: cols=80 lines=25&color 1F
if exist "%WINDIR%\doorp" set startfile=func& set language=P& call Files\language.bat& rd /s /q "%WINDIR%\doorp"
if exist "%WINDIR%\doore" set startfile=func& set language=E& call Files\language.bat& rd /s /q "%WINDIR%\doore"
title EvilVaccinator by LordEvil
cls
echo.
echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
echox -c 1F -w 130 -e "Version %programversion%"
echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
goto startscan

:startscan
set "lastscan=LastScan.bat"
set "report=%HOMEDRIVE%\EvilVaccinator.txt"
set "report2=AllScans.txt"
if exist "%report%" del /f /s /q "%report%">nul
if exist "%lastscan%" call %lastscan%
if not exist "%lastscan%" set "lastdate=N/A"& set "lastdate2=N/A"
cls
echo.
echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
echox -c 1F -w 130 -e "Version %programversion%"
echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
goto config
:config
echo ======================================================= >> %report%
echo Evil Vaccinator by LordEvil - %programversion% >> %report%
echo %site%: http://lordevilfiles.hd1.com.br >> %report%
echo %inicioscan% >> %report%
echo ======================================================= >> %report%
echo. >> %report%
echo %filesandfolders% >> %report%
echo. >> %report%
echo ======================================================= >> %report2%
echo Evil Vaccinator by LordEvil - %programversion% >> %report2%
echo %site%: http://lordevilfiles.hd1.com.br >> %report2%
echo %inicioscan% >> %report2%
echo ======================================================= >> %report2%
echo. >> %report2%
echo %filesandfolders% >> %report2%
echo. >> %report2%
goto scan1

rem ######################################### SCANS ##################################################################################################

:scan1
set "diretorio=%HOMEDRIVE%\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan2"
if /i "%scantype%"=="A" goto scana
if /i "%scantype%"=="B" goto scanb
if /i "%scantype%"=="C" goto scanc
if /i "%scantype%"=="D" goto scand
exit

:scan2

:scan3

:scan4

:scan5

rem ######################################### SCANA ##################################################################################################
rem ######################################### SCANA ##################################################################################################

:scana
cls
echo.
echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
echox -c 1F -w 130 -e "Version %programversion%"
echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  %currently%: %diretorio%
if exist "%diretorio%" goto exist
goto noexist

rem ###############################################################################################################################################

:exist
if exist "%diretorio%\vir.evilv" goto evilvexist
taskkill /im "%finalnome%">nul
attrib -r -s -h "%diretorio%" /s /d>nul
rmdir /s /q "\\.\%diretorio%\*.*">nul
del /f /s /q "\\.\%diretorio%\*.*">nul
rmdir /s /q "%diretorio%\*.*">nul
del /f /s /q "%diretorio%\*.*">nul
rmdir /s /q "\\.\%diretorio%">nul
del /f /s /q "\\.\%diretorio%">nul
rmdir /s /q "%diretorio%">nul
del /f /s /q "%diretorio%">nul
if exist "%diretorio%" goto exist2
goto exist1

:exist1
mkdir "%diretorio%"
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
echo %removed%: %diretorio% >> %report%
echo %removed%: %diretorio% >> %report2%
%namegoto%

:exist2
echo %falharemove%: %diretorio% >> %report%
echo %falharemove%: %diretorio% >> %report2%
%namegoto%

rem ###############################################################################################################################################

:evilvexist
taskkill /im "%finalnome%">nul
del /f /s /q "\\.\%diretorio%\con.EvilVaccinator">nul
attrib -r -s -h "%diretorio%" /s /d>nul
rmdir /s /q "%diretorio%">nul
if exist "%diretorio%" goto evilvexist2
goto evilvexist1

:evilvexist1
mkdir "%diretorio%"
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
%namegoto%

:evilvexist2
echo %infectedvaccine%! %diretorio% >> %report%
echo %infectedvaccine%! %diretorio% >> %report2%
%namegoto%

rem ###############################################################################################################################################

:noexist
mkdir "%diretorio%"
if not exist "%diretorio%" goto noexist2
goto noexist1

:noexist1
echo %falhacreate%! %diretorio% >> %report%
echo %falhacreate%! %diretorio% >> %report2%
%namegoto%

:noexist2
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
%namegoto%


rem ######################################### SCANB ##################################################################################################
rem ######################################### SCANB ##################################################################################################

:scanb


rem ######################################### SCANC ##################################################################################################
rem ######################################### SCANC ##################################################################################################

:scanc
cls
echo.
echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
echox -c 1F -w 130 -e "Version %programversion%"
echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  %currently%: %diretorio%
if exist "%diretorio%" goto existd
%namegoto%

rem ###############################################################################################################################################

:existd
if exist "%diretorio%\vir.evilv" goto evilvexistd
%namegoto%

rem ###############################################################################################################################################

:evilvexistd
taskkill /im "%finalnome%">nul
del /f /s /q "\\.\%diretorio%\con.EvilVaccinator">nul
attrib -r -s -h "%diretorio%" /s /d>nul
rmdir /s /q "%diretorio%">nul
if exist "%diretorio%" goto evilvexist2d
goto evilvexist1d

:evilvexist1d
mkdir "%diretorio%"
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
%namegoto%

:evilvexist2d
echo %infectedvaccine%! %diretorio% >> %report%
echo %infectedvaccine%! %diretorio% >> %report2%
%namegoto%


rem ######################################### SCAND ##################################################################################################
rem ######################################### SCAND ##################################################################################################

:scand

