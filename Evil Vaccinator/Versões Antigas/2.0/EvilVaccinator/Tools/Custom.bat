@echo off
if /i "%startfile%"=="func" goto program
goto error1
:program
mode con: cols=100 lines=35&color 1F
title EvilVaccinator by LordEvil
if /i "%continue%"=="B" goto config
goto menu
:menu
cls
echo.
echo                                  EVIL VACCINATOR - Custom Fix
echo.
echo ====================================================================================================
echo.
echo.
echo  1 - %return%
echo.
echo  Q - %optionQ%
echo.
echo.
echo  %caution1%
echo  %caution2%
echo.
echo  %caution3%
echo.
echo.
echo.
set /p opcao= (1,Q,%Code%) :            -^> 
if /i "%opcao%"=="1" goto return
if /i "%opcao%"=="Q" exit
if /i "%opcao%"=="mode.custom." goto customscan
goto menu

rem ###############################################################################################################################################

:return
set continue=A& set startfile=func
%HOMEDRIVE%\EvilVaccinator\EvilVaccinator.exe
goto :eof

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:customscan
cls
echo.
echo                                  EVIL VACCINATOR - Custom Fix
echo.
echo ====================================================================================================
echo.
echo.
echo  1 - %return%
echo.
echo  Q - %optionQ%
echo.
echo.
echo  %caution4%
echo  %caution5%
echo.
echo.
set /p opcao= (Y,1,Q) :              -^> 
if /i "%opcao%"=="1" goto return
if /i "%opcao%"=="Q" exit
if /i "%opcao%"=="Y" goto customscanstart
goto customscan

rem ###############################################################################################################################################

:customscanstart
if exist "%HOMEDRIVE%\Custom.EvilVaccinator" goto start
goto error2
:start
rename "%HOMEDRIVE%\Custom.EvilVaccinator" "8693v983hf893jf93fm8sofj38kd94dosfmtw4td9tsmtd9w34mft.bat"
call "%HOMEDRIVE%\8693v983hf893jf93fm8sofj38kd94dosfmtw4td9tsmtd9w34mft.bat"
set "lastscan=%HOMEDRIVE%\EvilVaccinator\Tools\LastScan.bat"
set "report=%HOMEDRIVE%\EvilVaccinator.txt"
set "report2=%HOMEDRIVE%\EvilVaccinator\Tools\AllScans.txt"
if exist "%report%" del /f /s /q "%report%">nul
if exist "%lastscan%" call %lastscan%
if not exist "%lastscan%" set "lastdate=N/A"& set "lastdate2=N/A"
cls
echo.
echo                                  EVIL VACCINATOR - Custom Fix
echo.
echo ====================================================================================================
echo.
echo.
echo                             %fixing%...
echo.
echo.
goto config
:config
echo ======================================================= >> %report%
echo Evil Vaccinator by LordEvil - %fixver% >> %report%
echo %option2%: http://lordevilfiles.hd1.com.br >> %report%
echo ^>^>^>^>^>^>^>^>^>^> Fix Mode ^<^<^<^<^<^<^<^<^<^< >> %report%
echo %inicioscan% >> %report%
echo ======================================================= >> %report%
echo. >> %report%
echo (((((((((((((((((((((((((((((((((((((( FIX )))))))))))))))))))))))))))))))))))))) >> %report%
echo. >> %report%
echo ======================================================= >> %report2%
echo Evil Vaccinator by LordEvil - %fixver% >> %report2%
echo %option2%: http://lordevilfiles.hd1.com.br >> %report2%
echo ^>^>^>^>^>^>^>^>^>^> Fix Mode ^<^<^<^<^<^<^<^<^<^< >> %report2%
echo %inicioscan% >> %report2%
echo ======================================================= >> %report2%
echo. >> %report2%
echo (((((((((((((((((((((((((((((((((((((( FIX )))))))))))))))))))))))))))))))))))))) >> %report2%
echo. >> %report2%
del /f /s /q LastVersion.bat>nul
goto filescan

rem ###############################################################################################################################################

:filescan
cls
echo.
echo                                  EVIL VACCINATOR - Custom Fix
echo.
echo ====================================================================================================
echo.
echo.
echo                             %fixing%...
echo.
echo.
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
attrib -r -s -h "%diretorio%" /s /d>nul
rmdir /s /q "\\.\%diretorio%\*.*">nul
del /f /s /q "\\.\%diretorio%\*.*">nul
rmdir /s /q "%diretorio%\*.*">nul
del /f /s /q "%diretorio%\*.*">nul
del /f /s /q "\\.\%diretorio%\con.EvilVaccinator">nul
del /f /s /q "%diretorio%\con.EvilVaccinator">nul
rmdir /s /q "\\.\%diretorio%">nul
del /f /s /q "\\.\%diretorio%">nul
rmdir /s /q "%diretorio%">nul
del /f /s /q "%diretorio%">nul
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
echo %ourvaccine%: %diretorio% >> %report%
echo %ourvaccine%: %diretorio% >> %report2%
goto cleanscan
:evilvexist2
echo %infectedvaccine%! %diretorio% >> %report%
echo %proceduresinfected% http:\\lordevilfiles.hd1.com.br >> %report%
echo %infectedvaccine%! %diretorio% >> %report2%
echo %proceduresinfected% http:\\lordevilfiles.hd1.com.br >> %report2%
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
echo %noexist%: %diretorio% >> %report%
echo %noexist%: %diretorio% >> %report2%
echo. > "\\.\%diretorio%\con.EvilVaccinator"
goto cleanscan

rem ###############################################################################################################################################

:cleanscan
set diretorio=
set finalnome=
goto finalscan

rem ###############################################################################################################################################

:finalscan
echo. >> %report%
echo. >> %report2%
echo %adicionais% >> %report%
echo %adicionais% >> %report2%
echo. >> %report%
echo. >> %report2%
echo %fimscan% >> %report%
echo %fimscan% >> %report2%
echo %ultimoscan%: %lastdate%, %ultimoscan2% %lastdate2% >> %report%
echo %ultimoscan%: %lastdate%, %ultimoscan2% %lastdate2% >> %report2%
del /f /s /q "%lastscan%">nul
echo @echo off >> %lastscan%
echo set "lastdate=%date%" >> %lastscan%
echo set "lastdate2=%TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%" >> %lastscan%
echo goto :eof >> %lastscan%
echo. >> %report%
echo. >> %report2%
echo (((((((((((((((((((((((((((((((((( --- EOF --- )))))))))))))))))))))))))))))))))) >> %report%
echo (((((((((((((((((((((((((((((((((( --- EOF --- )))))))))))))))))))))))))))))))))) >> %report2%
echo. >> %report2%
echo ################################################################################################ >> %report2%
echo. >> %report2%
start notepad %report%
set "startfile=1"
rename "%HOMEDRIVE%\8693v983hf893jf93fm8sofj38kd94dosfmtw4td9tsmtd9w34mft.bat" "Custom.EvilVaccinator"
exit

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Error Session:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:error1
msg * Error E00547.
exit

rem ###############################################################################################################################################

:error2
msg * Error E00775.
exit