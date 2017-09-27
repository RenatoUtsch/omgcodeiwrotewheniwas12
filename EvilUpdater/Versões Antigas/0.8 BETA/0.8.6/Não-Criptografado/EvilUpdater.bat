@echo off
cls
call "config\variables.bat"
call "config\version.bat"
call "config\language.bat"
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
VER|FIND /i "5.1.2600">nul && set OSVER=0 && goto checkforproblems
VER|FIND /i "6.0.600">nul && set OSVER=1 && goto checkforproblems
VER|FIND /i "6.1.7">nul && set OSVER=2 && goto checkforproblems
goto nosupport
:checkforproblems
cls
echo.
echo                 %startup%
echo.
echo   #####################################
   ping localhost -n 2 > nul
rem Verificação de Existência de Arquivos
if not exist ..\EvilUpdater goto installproblem
if not exist config\variables.bat goto installproblem
if not exist config\language.bat goto installproblem
if not exist config\version.bat goto installproblem
if not exist wget.exe goto installproblem
if not exist unzip.exe goto installproblem
rem Fim da Verificação
cls
echo.
echo                 %startup%.
echo.
echo   #############################################################################
	ping localhost -n 2 > nul
echo.
echo                             %startup2%
	ping localhost -n 2 > nul
goto inicioevu

rem ##########################################################################################################
rem Update EVU Area
rem ##########################################################################################################

:inicioevu
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo              %checkversion1%
echo.
rem ##########################################################################################################
rem ###### --- Set Area --- ##################################################################################
rem ##########################################################################################################
set "CUEVU=CheckUpdateEVU.bin"
set "statustype=trunk"
set "programversiontrunkEVU=0.8.7"
set "programversionstableEVU=0.8.6"
rem ##########################################################################################################
rem ###### --- End . SA --- ##################################################################################
rem ##########################################################################################################
if exist "%CUEVU%" del /f /s /q "%CUEVU%" >nul
if exist "%CUEVU%" goto fileproblem
wget --tries 3 --wait 1 --no-check-certificate "http://lordevilfiles.zxq.net/downloads/dev/devtool/EvilUpdater/Updates/%CUEVU%" >nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo              %checkversion1%
echo.
if exist "%CUEVU%" goto checkevu
goto downloadproblemevu

:checkevu
if exist "%CUEVU%.bat" del /f /s /q "%CUEVU%.bat" >nul
if exist "%CUEVU%.bat" goto fileproblem
rename "%CUEVU%" "%CUEVU%.bat"
call "%CUEVU%.bat"
if /i "%statustype%"=="trunk" (
	if /i "%currentversiontrunkEVU%"=="%programversiontrunkEVU%" goto itsupdatedevu
	goto needstoupdateevu
	)
if /i "%statustype%"=="stable" (
	if /i "%currentversionstableEVU%"=="%programversionstableEVU%" goto itsupdatedevu
	goto needstoupdateevu
	)

:itsupdatedevu
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
goto inicio

:needstoupdateevu
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo         %ntud1%
echo.
echo   %ntud2%
echo.
if /i "%statustype%"=="trunk" (
	echo         %ntud3% %programversiontrunkEVU%
	echo         %ntud4% %currentversiontrunkEVU%
	)
if /i "%statustype%"=="stable" (
	echo         %ntud3% %programversionstableEVU%
	echo         %ntud4% %currentversionstableEVU%
	)
echo.
echo   %ntud5% (%ntdu6%)
echo.
set /p opcao= (%ntdu6%) :        -^> 
if /i "%opcao%"=="%ntduS%" goto itsupdatedevu
if /i "%opcao%"=="%ntduN%" goto itsnotupdatedevu
goto needstoupdateevu

:itsnotupdatedevu
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
exit

rem ##########################################################################################################
rem Update Area
rem ##########################################################################################################

:inicio
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                 %searching1%
echo.
if exist "%dcheck%" del /f /s /q "%dcheck%" >nul
if exist "%dcheck%" goto fileproblem
wget --tries 2 --wait 1 --no-check-certificate "%dsource%%dcheck%" >nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
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
call "config\version.bat"
if /i "%currentversion%"=="%programversion%" goto itsupdated 
goto needstoupdate

:needstoupdate
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                    %searching2%
echo.
if exist "%dfile%" del /f /s /q "%dfile%" >nul
if exist "%dfile%" goto fileproblem
wget --tries 2 --wait 1 --no-check-certificate "%dsource%%dfile%" >nul 2>nul
cls
title EvilUpdater by LordEvil for %programname%
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
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
echo ===============================================================================
echo.
echo                    %searching2%
echo.
xcopy /y "%filefolder%\*.*" ".." /E /H /R >nul
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                              %updates1%
echo.
	ping localhost -n 3 > nul
cls
title %programname%
"%fileprogram%"
exit

:itsupdated
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                          %updates2%
echo.
	ping localhost -n 3 > nul
cls
title %programname%
"%fileprogram%"
exit

rem ##########################################################################################################
rem Problems Area
rem ##########################################################################################################

:nosupport
cls
echo.
echo                                EVIL UPDATER
echo.
echo ================================================================================
echo.
echo                              --- %nosup1% ---
echo.
echo                           XP / Vista / Seven %nosup2%...
echo.
echo                     %nosup3%
pause>nul
exit


:installproblem
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                               %instpr1%
echo.
echo                  %instpr2%
echo                            %instpr3%
echo.
pause>nul
exit

:downloadproblem
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
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
"%fileprogram%"
exit

:opsupdating
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
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
echo ===============================================================================
echo.
echo  %ops1%
echo.
echo          %ops2%
pause>nul
cls
title %programname%
"%fileprogram%"
exit

:fileproblem
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
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
echo ===============================================================================
echo.
echo         %filep1%
echo               %filep2%
echo.
echo              %filep3%
pause>nul
cls
title %programname%
"%fileprogram%"
exit

:downloadproblemevu
del /f /s /q "%CUEVU%">nul 2>nul
del /f /s /q "%CUEVU%.bat">nul 2>nul
del /f /s /q "%dfile%">nul 2>nul
del /f /s /q "%dcheck%">nul 2>nul
del /f /s /q "%dfile%.zip">nul 2>nul
del /f /s /q "%dcheck%.bat">nul 2>nul
rd /s /q "%filefolder%">nul 2>nul
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
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