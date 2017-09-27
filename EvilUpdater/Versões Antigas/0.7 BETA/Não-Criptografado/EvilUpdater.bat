@echo off
call "variables.bat"
call "version.bat"
color %bcolor%
title EvilUpdater by LordEvil - for %programname%
echo.
echo                 Starting Updater... Please wait...
echo.
cls
echo.
echo                 Starting Updater... Please wait...
echo.
echo   #
   ping localhost -n 1 > nul
cls
echo.
echo                 Starting Updater... Please wait...
echo.
echo   ########
   ping localhost -n 3 > nul
cls
echo.
echo                 Starting Updater... Please wait...
echo.
echo   #####################################
   ping localhost -n 3 > nul
rem Verificação de Existência de Arquivos
if not exist variables.bat goto installproblem
if not exist version.bat goto installproblem
if not exist download.exe goto installproblem
if not exist unzip.exe goto installproblem
rem Fim da Verificação
cls
echo.
echo                 Starting Updater... Please wait...
echo.
echo   ######################################
   ping localhost -n 1 > nul
cls
echo.
echo                 Starting Updater... Please wait...
echo.
echo   ###############################################
cls
echo.
echo                 Starting Updater... Please wait...
echo.
echo   #############################################################################
	ping localhost -n 3 > nul
echo.
echo                             Updater Started.
	ping localhost -n 3 > nul
goto inicio

:inicio
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                           Checking for updates...
echo       Make sure that you are conected to internet and click Enter.
echo.
echo                                    ---
echo.
echo                           Iniciando atualizacao...
echo       Tenha certeza que esta conectado na internet e clique Enter.
pause>nul
cls
download %dsource%%dcheck% /overwrite
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
download %dsource%%dfile% /overwrite
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
echo                              Program updated.
echo.
echo                                    ---
echo.
echo                            Programa atualizado.
	ping localhost -n 3 > nul
%fileprogram%
exit

:itsupdated
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                          This program already is updated.
echo.
echo                                    ---
echo.
echo                       Este programa ja esta atualizado.
	ping localhost -n 3 > nul
del /f /s /q "%dfile%"
del /f /s /q "%dcheck%"
del /f /s /q "%dfile%.zip"
del /f /s /q "%dcheck%.bat"
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
echo                               Install Problem
echo.
echo                  We suggest to download this program again.
echo                            Press any key to exit.
echo.
echo                                     ---
echo.
echo.                           Problema na Instalacao
echo.
echo                  Sugerimos que baixe este programa novamente.
echo                      Pressione qualquer tecla para sair.
pause>nul
exit

:downloadproblem
cls
echo.
echo                                EVIL UPDATER
echo.
echo ===============================================================================
echo.
echo                               Download Problem
echo.
echo                   We suggest to start this program again.
echo           If the problem continue, download this program again or
echo                       contact the owner of the program.
echo                            Press any key to exit.
echo.
echo                                     ---
echo.
echo                             Problema no Download
echo.
echo                 Sugerimos que execute este programa novamente.
echo             Se o problema continuar, baixe o programa novamente ou 
echo                          contacte o dono do programa.
echo                       Pressione qualquer tecla para sair.
pause>nul
exit