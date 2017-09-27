@echo off
if exist "%WINDIR%\system32\Uninstall_EvilVaccinator_EN.bat" goto existpeidei
goto noexist1peidei
:existpeidei
if exist "%WINDIR%\system32\Uninstall_EvilVaccinator_PT-BR.bat" goto exist2peidei
goto noexist2peidei
:exist2peidei
if exist "Tools\Uninstall_EvilVaccinator_PT-BR.bat" del /f /s /q "Tools\Uninstall_EvilVaccinator_PT-BR.bat"
if exist "Tools\Uninstall_EvilVaccinator_EN.bat" del /f /s /q "Tools\Uninstall_EvilVaccinator_EN.bat"
goto program
:noexist1peidei
move /y "Tools\Uninstall_EvilVaccinator_EN.bat" "%WINDIR%\system32">nul
if exist "%WINDIR%\system32\Uninstall_EvilVaccinator_PT-BR.bat" goto exist2peidei
goto noexist2peidei
:noexist2peidei
if exist "Tools\Uninstall_EvilVaccinator_EN.bat" del /f /s /q "Tools\Uninstall_EvilVaccinator_EN.bat"
move /y "Tools\Uninstall_EvilVaccinator_PT-BR.bat" "%WINDIR%\system32"
goto program
:program
set startfile=1
mode con: cols=80 lines=25&color 1F
if "%continue%"=="A" goto menuinicial
call Tools\Version.bat
title EvilVaccinator by LordEvil
mode con: cols=130 lines=35&color FC
cls
echo.
echo.
echo                                                @@@@@@@@  @@@     @@@   @@@  @@@
echo                                                @@@@@@@@  @@@     @@@   @@@  @@@  
echo                                                @@@        @@@   @@@    @@@  @@@
echo                                                @@@        @@@   @@@    @@@  @@@
echo                                                @@@@@@@@    @@@ @@@     @@@  @@@
echo                                                @@@@@@@@    @@@ @@@     @@@  @@@
echo                                                @@@          @@@@@      @@@  @@@
echo                                                @@@          @@@@@      @@@  @@@
echo                                                @@@@@@@@      @@@       @@@  @@@@@@@@
echo                                                @@@@@@@@      @@@       @@@  @@@@@@@@                                           
echo.
echo.
echo.
echo    @@@     @@@       @@@       @@@@@@@@  @@@@@@@@  @@@   @@@@@@     @@@        @@@     @@@@@@@@@@@@@   @@@@@@@@@@@   @@@@@@@
echo    @@@     @@@      @@@@@      @@@@@@@@  @@@@@@@@  @@@   @@@@@@@    @@@       @@@@@         @@@       @@@       @@@  @@@  @@@@
echo     @@@   @@@      @@@ @@@     @@@       @@@       @@@   @@@ @@@    @@@      @@@ @@@        @@@       @@@       @@@  @@@   @@@@
echo     @@@   @@@      @@@ @@@     @@@       @@@       @@@   @@@ @@@    @@@      @@@ @@@        @@@       @@@       @@@  @@@   @@@@
echo      @@@ @@@      @@@   @@@    @@@       @@@       @@@   @@@  @@@   @@@     @@@   @@@       @@@       @@@       @@@  @@@  @@@@
echo      @@@ @@@      @@@   @@@    @@@       @@@       @@@   @@@  @@@   @@@     @@@   @@@       @@@       @@@       @@@  @@@@@@@
echo       @@@@@      @@@@@@@@@@@   @@@       @@@       @@@   @@@   @@@ @@@     @@@@@@@@@@@      @@@       @@@       @@@  @@@  @@@
echo       @@@@@      @@@@@@@@@@@   @@@       @@@       @@@   @@@   @@@ @@@     @@@@@@@@@@@      @@@       @@@       @@@  @@@   @@@
echo        @@@      @@@       @@@  @@@@@@@@  @@@@@@@@  @@@   @@@    @@@@@@    @@@       @@@     @@@       @@@       @@@  @@@   @@@
echo        @@@      @@@       @@@  @@@@@@@@  @@@@@@@@  @@@   @@@    @@@@@@    @@@       @@@     @@@        @@@@@@@@@@@   @@@    @@@
echo.
echo.
echo.
echo                                         ___________________________________________
echo.
echo                                                      Version %fixver%
echo                                         ___________________________________________
echo.
echo.
ping localhost -n 3 > nul
mode con: cols=80 lines=25&color 1F
VER|FIND /i "5.1.2600">nul && set OSVER=0 && goto checkforproblems
VER|FIND /i "6.0.600">nul && set OSVER=1 && goto checkforproblems
VER|FIND /i "6.1.7">nul && set OSVER=2 && goto checkforproblems
goto nosupport
:checkforproblems
if not exist "%HOMEDRIVE%\EvilVaccinator" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Language.bat" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Scan.bat" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\ErrorList.bat" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Version.bat" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00547-P.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00547-E.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00565-P.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00565-E.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00652-P.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00652-E.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00583-P.txt" goto installproblem
if not exist "%HOMEDRIVE%\EvilVaccinator\Tools\Errors\E00583-E.txt" goto installproblem
goto menulanguage

rem ###############################################################################################################################################

:menulanguage
cls
echo.
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
echo.
echo                     P - Portugues
echo.
echo                     E - English
echo.
echo                     Q - Quit
echo.
echo.
echo.
set /p opcao= (P,E,Q) :        -^> 
if /i "%opcao%"=="P" set language=P& set startfile=func& call Tools\Language.bat& goto menuinicial
if /i "%opcao%"=="E" set language=E& set startfile=func& call Tools\Language.bat& goto menuinicial
if /i "%opcao%"=="Q" exit
goto menulanguage

rem ###############################################################################################################################################

:menuinicial
set continue=1
if /i "%typeerror%"=="Digite o erro" goto menuinicial2
if /i "%typeerror%"=="Type the Error" goto menuinicial2
if /i "%typeerror%"=="Geben Sie den Fehler" goto menuinicial2
goto error1
:menuinicial2
cls
echo.
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
echo.
echo              1 - %option1%
echo.
echo              2 - %option4%
echo.
echo              3 - %return%
echo.
echo              Q - %optionQ%
echo.
echo.
echo.
set /p opcao= (1,2,3,4,5,6,Q) :        -^> 
if /i "%opcao%"=="1" set startfile=func& call Tools\Scan.bat& goto :eof
if /i "%opcao%"=="2" set startfile=func& call Tools\ErrorList.bat& goto :eof
if /i "%opcao%"=="3" goto menulanguage
if /i "%opcao%"=="Q" exit
goto menuinicial2

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Problems Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:nosupport
cls
echo.
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
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
echo                                 EVIL VACCINATOR
echo.
echo ================================================================================
echo.
echo                             --- Install Problem ---
echo.
echo                  We suggest to download again this program from
echo               http://lordevilfiles.hd1.com.br - The official site.
echo.
echo                            Press any key to exit.
pause>nul
exit