@echo off
cls
if /i "%startfile%"=="func" goto program
goto E00547

:program
rem ============================================================
rem Variables.bat inserted
rem ============================================================
set "programname=EvilVaccinator"
set "bcolor=1F"
set "dsource=http://lordevilfiles.zxq.net/downloads/dev/devtool/EvilVaccinator/2.1/updates/"
set "dcheck=checkatualizationEVV.bin"
set "dfile=updateEVV.bin"
set "filefolder=EVVupdates"
set "fileprogram=EvilVaccinator.cmd"
rem ============================================================
rem End of Variables.bat inserted
rem ============================================================

rem ============================================================
rem EVU INFORMATION
rem ============================================================
set "fixver=0.8.6.02"
rem ============================================================
rem End of EVU INFORMATION
rem ============================================================
color %bcolor%
title EvilUpdater by LordEvil for %programname%
cls
echo.
echo                 %startup%
echo.
echo   #
   ping localhost -n 2 > nul
cls
echo.
echo                 %startup%
echo.
echo   ########
   ping localhost -n 2 > nul
cls
echo.
echo                 %startup%
echo.
echo   #####################################
   ping localhost -n 2 > nul
cls
echo.
echo                 %startup%.
echo.
echo   #############################################################################
	ping localhost -n 2 > nul
echo.
echo                             %startup2%
	ping localhost -n 2 > nul
goto inicioupdate

:inicioupdate
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                 %searching1%
echo.
if exist "%dcheck%" del /f /s /q "%dcheck%" >nul
if exist "%dcheck%" goto fileproblem
Tools\wget --tries 5 --wait 1 --no-check-certificate "%dsource%%dcheck%" >nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                 %searching1%
echo.
rem checando se o arquivo chegou
if exist "%dcheck%" goto checkupdate
goto downloadproblem

:checkupdate
if exist "%dcheck%.bat" del /f /s /q "%dcheck%.bat" >nul
if exist "%dcheck%.bat" goto fileproblem
rename "%dcheck%" "%dcheck%.bat"
call "%dcheck%.bat"
call "Tools\version.bat"
if /i "%currentversion%"=="%programversion%" goto itsupdated 
goto needstoupdate

:needstoupdate
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                    %searching2%
echo.
if exist "%dfile%" del /f /s /q "%dfile%" >nul
if exist "%dfile%" goto fileproblem
Tools\wget --tries 2 --wait 1 --no-check-certificate "%dsource%%dfile%" >nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                    %searching2%
echo.
rem checando se o arquivo chegou
if exist "%dfile%" goto updatenow
goto downloadproblem

:updatenow
if exist "%dfile%.zip" del /f /s /q "%dfile%.zip" >nul
if exist "%dfile%.zip" goto fileproblem
rename "%dfile%" "%dfile%.zip"
if exist "%filefolder%" rd /s /q "%filefolder%" >nul
if exist "%filefolder%" goto fileproblem
unzip -o "%dfile%.zip" >nul
rem ##########################################################################################################
rem ###### --- Checando se pasta que chegou e update --- #####################################################
rem ##########################################################################################################
if exist "%filefolder%" goto startupdating
if not exist "%filefolder%" goto opsupdating
rem ##########################################################################################################
rem ###### --- Fim da checagem --- ###########################################################################
rem ##########################################################################################################
:startupdating
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                    %searching2%
echo.
xcopy /y "%filefolder%\*.*" "..\EvilVaccinator" /E /H /R >nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                              %updates1%
echo.
	ping localhost -n 3 > nul
cls
title %programname%
set returnto=B
"%fileprogram%"
exit

:itsupdated
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                          %updates2%
echo.
	ping localhost -n 3 > nul
cls
title %programname%
set returnto=B
"%fileprogram%"
exit

rem ##########################################################################################################
rem Problems Area
rem ##########################################################################################################

:downloadproblem
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo                             %downpr1%
echo.
echo                   %downpr2%
echo             %downpr3%
echo                     %downpr4%
echo.
echo  %downpr5%
echo                      %downpr6%
echo.
echo              %downpr7%
pause>nul
cls
title %programname%
set returnto=B
"%fileprogram%"
exit

:opsupdating
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo  %ops1%
echo.
echo          %ops2%
pause>nul
cls
title %programname%
set returnto=B
"%fileprogram%"
exit

:fileproblem
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo         %filep1%
echo               %filep2%
echo.
echo              %filep3%
pause>nul
cls
title %programname%
set returnto=B
"%fileprogram%"
exit

:downloadproblemevu
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo                                                               %evuversion% %fixver%
echo ================================================================================
echo.
echo    %ntudup1%
echo.
echo                   %ntudup2% (%ntdu6%)
echo.
echo.
set /p opcao= (%ntdu6%) :        -^> 
if /i "%opcao%"=="%ntduS%" goto inicio
if /i "%opcao%"=="%ntduN%" exit
goto downloadproblemevu

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Error Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:E00547
cls
msg * Error E00547!
exit