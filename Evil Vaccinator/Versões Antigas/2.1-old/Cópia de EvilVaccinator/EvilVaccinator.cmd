@echo off
cls
if /i "%returnto%"=="A" goto menulanguage
mode con: cols=130 lines=35&color FC
title EvilVaccinator by LordEvil
call EvilUpdater\config\version.bat
echo.
echo.
Tools\echox -c FC "                                                @@@@@@@@  @@@     @@@   @@@  @@@"
Tools\echox -c FC "                                                @@@@@@@@  @@@     @@@   @@@  @@@"
Tools\echox -c FC "                                                @@@        @@@   @@@    @@@  @@@"
Tools\echox -c FC "                                                @@@        @@@   @@@    @@@  @@@"
Tools\echox -c FC "                                                @@@@@@@@    @@@ @@@     @@@  @@@"
Tools\echox -c FC "                                                @@@@@@@@    @@@ @@@     @@@  @@@"
Tools\echox -c FC "                                                @@@          @@@@@      @@@  @@@"
Tools\echox -c FC "                                                @@@          @@@@@      @@@  @@@"
Tools\echox -c FC "                                                @@@@@@@@      @@@       @@@  @@@@@@@@"
Tools\echox -c FC "                                                @@@@@@@@      @@@       @@@  @@@@@@@@"                                         
echo.
echo.
echo.
Tools\echox -c FC "    @@@     @@@       @@@       @@@@@@@@  @@@@@@@@  @@@   @@@@@@     @@@        @@@     @@@@@@@@@@@@@   @@@@@@@@@@@   @@@@@@@"
Tools\echox -c FC "    @@@     @@@      @@@@@      @@@@@@@@  @@@@@@@@  @@@   @@@@@@@    @@@       @@@@@         @@@       @@@       @@@  @@@  @@@@"
Tools\echox -c FC "     @@@   @@@      @@@ @@@     @@@       @@@       @@@   @@@ @@@    @@@      @@@ @@@        @@@       @@@       @@@  @@@   @@@@"
Tools\echox -c FC "     @@@   @@@      @@@ @@@     @@@       @@@       @@@   @@@ @@@    @@@      @@@ @@@        @@@       @@@       @@@  @@@   @@@@"
Tools\echox -c FC "      @@@ @@@      @@@   @@@    @@@       @@@       @@@   @@@  @@@   @@@     @@@   @@@       @@@       @@@       @@@  @@@  @@@@"
Tools\echox -c FC "      @@@ @@@      @@@   @@@    @@@       @@@       @@@   @@@  @@@   @@@     @@@   @@@       @@@       @@@       @@@  @@@@@@@"
Tools\echox -c FC "       @@@@@      @@@@@@@@@@@   @@@       @@@       @@@   @@@   @@@ @@@     @@@@@@@@@@@      @@@       @@@       @@@  @@@  @@@"
Tools\echox -c FC "       @@@@@      @@@@@@@@@@@   @@@       @@@       @@@   @@@   @@@ @@@     @@@@@@@@@@@      @@@       @@@       @@@  @@@   @@@"
Tools\echox -c FC "        @@@      @@@       @@@  @@@@@@@@  @@@@@@@@  @@@   @@@    @@@@@@    @@@       @@@     @@@       @@@       @@@  @@@   @@@"
Tools\echox -c FC "        @@@      @@@       @@@  @@@@@@@@  @@@@@@@@  @@@   @@@    @@@@@@    @@@       @@@     @@@        @@@@@@@@@@@   @@@    @@@"
echo.
echo.
echo.
Tools\echox -c F8 -w 124 -e "___________________________________________"
echo.
Tools\echox -c F0 -w 123 -e "Version %programversion%"
Tools\echox -c F8 -w 124 -e "___________________________________________"
echo.
echo.
ping localhost -n 3 > nul
mode con: cols=80 lines=25&color 1F
VER|FIND /i "5.1.2600">nul && set OSVER=0 && goto checkforproblems
VER|FIND /i "6.0.600">nul && set OSVER=1 && goto checkforproblems
VER|FIND /i "6.1.7">nul && set OSVER=2 && goto checkforproblems
goto nosupport

:checkforproblems
if not exist "..\EvilVaccinator" goto installproblem
if not exist "EvilUpdater\config\variables.bat" goto installproblem
if not exist "EvilUpdater\config\version.bat" goto installproblem
if not exist "EvilUpdater\config\language.bat" goto installproblem
if not exist "EvilUpdater\EvilUpdater.exe" goto installproblem
if not exist "EvilUpdater\wget.exe" goto installproblem
if not exist "EvilUpdater\unzip.exe" goto installproblem
if not exist "Tools" goto installproblem
if not exist "Tools\7za.exe" goto installproblem
if not exist "Tools\echox.exe" goto installproblem
if not exist "Tools\fsum.exe" goto installproblem
if not exist "Tools\language.bat" goto installproblem
if not exist "Tools\Process.exe" goto installproblem
if not exist "scan.bat" goto installproblem
if not exist "start.bat" goto installproblem
goto menulanguage

:menulanguage
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "Version %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo                     P - Portugues
echo.
echo                     E - English
echo.
echo                     Q - Quit
echo.
echo.
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
echo.
set /p opcao= (P,E,Q) :        -^> 
if /i "%opcao%"=="P" if /i "%returnto%"=="A" (set language=P& set startfile=func& call Tools\language.bat& "Start.bat"& goto :eof) else (set language=P& set startfile=func& call Tools\language.bat& call "EvilUpdater\run.bat"& goto :eof)
if /i "%opcao%"=="E" if /i "%returnto%"=="A" (set language=E& set startfile=func& call Tools\language.bat& "Start.bat"& goto :eof) else (set language=E& set startfile=func& call Tools\language.bat& call "EvilUpdater\run.bat"& goto :eof)
if /i "%opcao%"=="Q" exit
goto menulanguage

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Problems Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:nosupport
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "Version %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo                              --- No Support ---
echo.
echo                           XP / Vista / Seven only...
echo.
echo                            Press any key to exit.
pause>nul
exit

rem ###############################################################################################################################################

:installproblem
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "Version %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo                             --- Install Problem ---
echo.
echo                  We suggest to download again this program from
echo               http://lordevilfiles.hd1.com.br - The official site.
echo.
echo                            Press any key to exit.
pause>nul
exit