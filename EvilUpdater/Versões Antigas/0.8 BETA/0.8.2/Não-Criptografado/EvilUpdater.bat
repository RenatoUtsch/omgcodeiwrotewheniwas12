@echo off
call "config\variables.bat"
call "config\version.bat"
call "config\language.bat"
color %bcolor%
title EvilUpdater by LordEvil for %programname%
echo.
echo                 %startup%
echo.
cls
echo.
echo                 %startup%
echo.
echo   #
   ping localhost -n 1 > nul
cls
echo.
echo                 %startup%
echo.
echo   ########
   ping localhost -n 3 > nul
cls
echo.
echo                 %startup%
echo.
echo   #####################################
   ping localhost -n 3 > nul
rem Verificação de Existência de Arquivos
if not exist config\variables.bat goto installproblem
if not exist config\language.bat goto installproblem
if not exist config\version.bat goto installproblem
if not exist wget.exe goto installproblem
if not exist unzip.exe goto installproblem
rem Fim da Verificação
cls
echo.
echo                 %startup%
echo.
echo   ######################################
   ping localhost -n 1 > nul
cls
echo.
echo                 %startup%.
echo.
echo   #############################################################################
	ping localhost -n 3 > nul
echo.
echo                             %startup2%
	ping localhost -n 3 > nul
goto inicio

:inicio
cls
title EvilUpdater by LordEvil for %programname%
if exist "%dcheck%" del /f /s /q "%dcheck%"
wget --tries 10 --wait 1 --no-check-certificate %dsource%%dcheck%
title EvilUpdater by LordEvil for %programname%
rem checando se o arquivo chegou
if exist "%dcheck%" goto checkupdate
goto downloadproblem

:checkupdate
rename %dcheck% %dcheck%.bat
call "%dcheck%.bat"
call "version.bat"
if /i "%currentversion%"=="%programversion%" goto itsupdated 
goto needstoupdate

:needstoupdate
title EvilUpdater by LordEvil for %programname%
if exist "%dfile%" del /f /s /q "%dfile%"
wget --tries 10 --wait 1 --no-check-certificate %dsource%%dfile%
title EvilUpdater by LordEvil for %programname%
rem checando se o arquivo chegou
if exist "%dfile%" goto updatenow
goto downloadproblem

:updatenow
rename %dfile% %dfile%.zip
unzip -o %dfile%.zip
xcopy /y "updates\*.*" ".." /E /H /R
del /f /s /q "%dfile%"
del /f /s /q "%dcheck%"
del /f /s /q "%dfile%.zip"
del /f /s /q "%dcheck%.bat"
rd /s /q "updates"
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
%fileprogram%
exit

:itsupdated
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                          %updates2%
echo.
	ping localhost -n 3 > nul
del /f /s /q "%dfile%"
del /f /s /q "%dcheck%"
del /f /s /q "%dfile%.zip"
del /f /s /q "%dcheck%.bat"
cls
title %programname%
%fileprogram%
exit

rem ##########################################################################################################
rem Error's Area
rem ##########################################################################################################

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
echo         %downpr5%
echo                      %downpr6%
echo.
echo              %downpr7%
pause>nul
cls
title %programname%
%fileprogram%
goto :eof