@echo off
cls
call "Tools\version.bat"
mode con: cols=80 lines=25&color 1F
if /i "%returnto%"=="A" goto menulanguage
if /i "%returnto%"=="B" goto menuinicial
mode con: cols=130 lines=35&color FC
title EvilVaccinator by LordEvil
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
if not exist "Tools\ErrorList" goto installproblem
if not exist "Tools\ErrorList\E00547-E.txt" goto installproblem
if not exist "Tools\ErrorList\E00547-P.txt" goto installproblem
if not exist "Tools\ErrorList\E00722-E.txt" goto installproblem
if not exist "Tools\ErrorList\E00722-P.txt" goto installproblem
if not exist "Tools" goto installproblem
if not exist "Tools\7za.exe" goto installproblem
if not exist "Tools\EchoX.exe" goto installproblem
if not exist "Tools\fsum.exe" goto installproblem
if not exist "Tools\language.bat" goto installproblem
if not exist "Tools\Process.exe" goto installproblem
if not exist "Tools\unzip.exe" goto installproblem
if not exist "Tools\version.bat" goto installproblem
if not exist "Tools\wget.exe" goto installproblem
if not exist "EvilVaccinator.exe" goto installproblem
if not exist "Modules.bat" goto installproblem
if not exist "EvilUpdater.bat" goto installproblem
goto menulanguage

rem ###############################################################################################################################################

:menulanguage
mode con: cols=80 lines=25&color 1F
cls
title EvilVaccinator by LordEvil
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
if /i "%opcao%"=="P" if /i "%returnto%"=="A" ( set "language=P"& call "Tools\language.bat"& goto menuinicial ) else ( set "language=P"& set "startfile=func"& call "Tools\language.bat"& "EvilUpdater.bat"& goto :eof )
if /i "%opcao%"=="E" if /i "%returnto%"=="A" ( set "language=E"& call "Tools\language.bat"& goto menuinicial ) else ( set "language=E"& set "startfile=func"& call "Tools\language.bat"& "EvilUpdater.bat"& goto :eof )
if /i "%opcao%"=="Q" exit
goto menulanguage

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Menu Inicial:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:menuinicial
mode con: cols=80 lines=25&color 1F
call "Tools\version.bat"
cls
title EvilVaccinator by LordEvil
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo              1 - %option1%
echo                                                     4 - %option4%
echo.
echo              2 - %option2%
echo                                                     5 - %optionr%
echo.
echo              3 - %option3%
echo.
echo.
echo              Q - %optionq%
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
set /p opcao= (1,2,3,4,Q) :        -^> 
if /i "%opcao%"=="1" set startfile=func& set scantype=A& Modules.bat& goto :eof
if /i "%opcao%"=="2" set startfile=func& set scantype=B& Modules.bat& goto :eof
if /i "%opcao%"=="3" goto ErrorList
if /i "%opcao%"=="4" "Tools\WebSite.html"& goto :eof
if /i "%opcao%"=="5" set returnto=A& goto menulanguage
if /i "%opcao%"=="Q" exit
goto menuinicial

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Error List:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:ErrorList
mode con: cols=100 lines=35&color 1F
title EvilVaccinator by LordEvil
cls
echo.
Tools\echox -c 1C -w 100 -e "EVIL VACCINATOR - %option3%"
echo.
Tools\echox -c 1F -w 170 -e "%evvversion% %programversion%"
Tools\echox -c 1E "===================================================================================================="
echo.
echo    1 - %allerrors%
echo.
echo    2 - %optionr%
echo.
echo    Q - %optionQ%
echo.
echo.
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
echo.
set /p opcao=%typeerror%: 
if /i "%opcao%"=="E00547" goto errorE00547
if /i "%opcao%"=="E00722" goto errorE00722
if /i "%opcao%"=="Q" exit
if /i "%opcao%"=="1" goto errorrun2
if /i "%opcao%"=="2" goto menuinicial
cls
echo.
Tools\echox -c 1C -w 100 -e "EVIL VACCINATOR - %option3%"
echo.
Tools\echox -c 1F -w 170 -e "%evvversion% %programversion%"
Tools\echox -c 1E "===================================================================================================="
echo.
echo                                  --- %Unrecognizederror% ---
echo.
echo.
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
echo.
echo %presscontinue%
pause>nul
goto ErrorList
:errorE00547
cls
echo.
Tools\echox -c 1C -w 100 -e "EVIL VACCINATOR - %option3%"
echo.
Tools\echox -c 1F -w 170 -e "%evvversion% %programversion%"
Tools\echox -c 1E "===================================================================================================="
echo.
type Tools\ErrorList\%error547%
echo.
echo.
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
echo.
echo %presscontinue%
pause>nul
goto ErrorList
:errorE00722
cls
echo.
Tools\echox -c 1C -w 100 -e "EVIL VACCINATOR - %option3%"
echo.
Tools\echox -c 1F -w 170 -e "%evvversion% %programversion%"
Tools\echox -c 1E "===================================================================================================="
echo.
type Tools\ErrorList\%error722%
echo.
echo.
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
echo.
echo %presscontinue%
pause>nul
goto ErrorList
:errorrun2
cls
echo.
Tools\echox -c 1C -w 100 -e "EVIL VACCINATOR - %option3%"
echo.
Tools\echox -c 1F -w 170 -e "%evvversion% %programversion%"
Tools\echox -c 1E "===================================================================================================="
echo.
type Tools\ErrorList\%error547%
echo.
type Tools\ErrorList\%error722%
echo.
echo.
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo.
echo.
echo %presscontinue%
pause>nul
goto ErrorList

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