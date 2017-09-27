@echo off
if /i "%startfile%"=="func" goto program
goto error1
:program
mode con: cols=80 lines=25&color 1F
title EvilVaccinator by LordEvil
if /i "%continue%"=="B" goto config
cls
echo.
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
echo.
echo          %scanning%
if /i "%typeerror%"=="Digite o erro" goto start
if /i "%typeerror%"=="Type the Error" goto start
if /i "%typeerror%"=="Geben Sie den Fehler" goto start
goto error2

rem ###############################################################################################################################################

:start
set "lastscan=%HOMEDRIVE%\EvilVaccinator\Tools\LastScan.bat"
set "report=%HOMEDRIVE%\EvilVaccinator.txt"
set "report2=%HOMEDRIVE%\EvilVaccinator\Tools\AllScans.txt"
if exist "%report%" del /f /s /q "%report%">nul
if exist "%lastscan%" call %lastscan%
if not exist "%lastscan%" set "lastdate=N/A"& set "lastdate2=N/A"
cls
echo.
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
echo.
echo          %scanning%
echo.
goto config
:config
echo ======================================================= >> %report%
echo Evil Vaccinator by LordEvil - %fixver% >> %report%
echo %site%: http://lordevilfiles.hd1.com.br >> %report%
echo %inicioscan% >> %report%
echo ======================================================= >> %report%
echo. >> %report%
echo %filesandfolders% >> %report%
echo. >> %report%
echo ======================================================= >> %report2%
echo Evil Vaccinator by LordEvil - %fixver% >> %report2%
echo %site%: http://lordevilfiles.hd1.com.br >> %report2%
echo %inicioscan% >> %report2%
echo ======================================================= >> %report2%
echo. >> %report2%
echo %filesandfolders% >> %report2%
echo. >> %report2%
del /f /s /q LastVersion.bat>nul
goto scan1
:scan1
set "diretorio=%HOMEDRIVE%\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan2"
goto filescan

rem ###############################################################################################################################################

:filescan
cls
echo.
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
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
set direxist=1
if exist "%diretorio%" set direxist=2
if /i "%direxist%"=="1" goto exist1
if /i "%direxist%"=="2" goto exist2
goto error3
:exist1
 mkdir "%diretorio%"
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
echo %removed%: %diretorio% >> %report%
echo %removed%: %diretorio% >> %report2%
goto cleanscan
:exist2
echo %falharemove%: %diretorio% >> %report%
echo %falharemove%: %diretorio% >> %report2%
goto cleanscan

rem ###############################################################################################################################################

:evilvexist
taskkill /im "%finalnome%">nul
del /f /s /q "\\.\%diretorio%\con.EvilVaccinator">nul
attrib -r -s -h "%diretorio%" /s /d>nul
rmdir /s /q "%diretorio%">nul
set direxist=1
if exist "%diretorio%" set direxist=2
if /i "%direxist%"=="1" goto evilvexist1
if /i "%direxist%"=="2" goto evilvexist2
goto error3
:evilvexist1
 mkdir "%diretorio%"
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
goto cleanscan
:evilvexist2
echo %infectedvaccine%! %diretorio% >> %report%
echo %infectedvaccine%! %diretorio% >> %report2%
goto cleanscan

rem ###############################################################################################################################################

:noexist

mkdir "%diretorio%"
set direxist=2
if not exist "%diretorio%" set direxist=1
if /i "%direxist%"=="1" goto noexist1
if /i "%direxist%"=="2" goto noexist2
goto error3
:noexist1
echo %falhacreate%! %diretorio% >> %report%
echo %falhacreate%! %diretorio% >> %report2%
goto cleanscan
:noexist2
echo. > "%diretorio%\vir.evilv"
attrib +r +s +h "%diretorio%" /s /d
echo. > "\\.\%diretorio%\con.EvilVaccinator"
goto cleanscan

rem ###############################################################################################################################################

:cleanscan
set diretorio=
set finalnome=
%namegoto%

rem ###############################################################################################################################################

:scan2
set "diretorio=%HOMEDRIVE%\autorun.inf\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan3"
goto filescan
:scan3
set "diretorio=%WINDIR%\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan4"
goto filescan
:scan4
set "diretorio=%WINDIR%\autorun.inf\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan5"
goto filescan
:scan5
set "diretorio=%WINDIR%\system32\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan6"
goto filescan
:scan6
set "diretorio=%WINDIR%\system32\autorun.inf\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan7"
goto filescan
:scan7
set "diretorio=%WINDIR%\SysWOW64\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan8"
goto filescan
:scan8
set "diretorio=%WINDIR%\SysWOW64\autorun.inf\autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan9"
goto filescan
:scan9
set "diretorio=%WINDIR%\System32\a.bat"
set "finalnome=a.bat"
set "namegoto=goto scan10"
goto filescan
:scan10
set "diretorio=%WINDIR%\SysWOW64\a.bat"
set "finalnome=a.bat"
set "namegoto=goto scan11"
goto filescan
:scan11
set "diretorio=%WINDIR%\SysWOW64\1.exe"
set "finalnome=1.exe"
set "namegoto=goto scan12"
goto filescan
:scan12
set "diretorio=%WINDIR%\System32\1.exe"
set "finalnome=1.exe"
set "namegoto=goto scan13"
goto filescan
:scan13
goto finalscan

rem ###############################################################################################################################################

:finalscan
echo. >> %report%
echo. >> %report2%
echo ======================================================= >> %report%
echo ======================================================= >> %report2%
echo %fimscan% >> %report%
echo %fimscan% >> %report2%
echo %ultimoscan%: %lastdate%, %ultimoscan2% %lastdate2% >> %report%
echo %ultimoscan%: %lastdate%, %ultimoscan2% %lastdate2% >> %report2%
echo ======================================================= >> %report%
echo ======================================================= >> %report2%
echo. >> %report%
echo. >> %report2%
echo ((((((((((((((((((((( --- EOF --- ))))))))))))))))))))) >> %report%
echo ((((((((((((((((((((( --- EOF --- ))))))))))))))))))))) >> %report2%
echo. >> %report2%
echo ################################################################################################ >> %report2%
echo. >> %report2%
del /f /s /q "%lastscan%">nul
echo @echo off >> %lastscan%
echo set "lastdate=%date%" >> %lastscan%
echo set "lastdate2=%TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%" >> %lastscan%
echo goto :eof >> %lastscan%
start notepad %report%
set "startfile=1"
exit

rem ###############################################################################################################################################
rem ###############################################################################################################################################rem ###############################################################################################################################################

rem Errors:

rem ###############################################################################################################################################
rem ###############################################################################################################################################


:error1
msg * Error E00547.
exit

rem ###############################################################################################################################################

:error2
msg * Error E00565.
set "startfile=1"
exit

rem ###############################################################################################################################################

:error3
msg * Error E00583.
set "startfile=1"
exit