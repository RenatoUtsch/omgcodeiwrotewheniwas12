@echo off
cls
rem ===== - Setting Fixed Version and others - ======================================
set "fixverHC=0.48 Alpha"
set "report=%HOMEDRIVE%\hosts-cleaner_report.txt"
rem ===== - End - ===================================================================

title Hosts Cleaner by LordEvil ^| Checking Windows Version
VER|FIND /i "5.1.2600">nul && set OSVER=0 && goto winxp
goto nosupport

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:winxp
title Hosts Cleaner by LordEvil ^| Windows XP
cls
echo.
echo                              HOSTS CLEANER
echo.
echo                                                           Version %fixverHC%
echo ================================================================================
echo.
echo   Scanning your hosts file... please wait...

rem ======= - Setting configs - =====================================================
set "hoststemplate=hosts_default1.bin"
rem ======= - End - =================================================================

echo ======================================================>>%report%
echo ===== Hosts Cleaner Report - v.%fixverHC% ============>>%report%
echo ======================================================>>%report%
echo ----^> Using: Windows XP ^| User: %USERNAME% >>%report%
echo ----^> Date: %DATE% ^| Time: %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%>>%report%
if not exist "%WINDIR%\system32\drivers\etc\hosts" goto winxpnotexist
FOR %%A in (%WINDIR%\system32\drivers\etc\hosts) do (
		FOR %%a in (%hoststemplate%) do if "%%~zA"=="%%~za" goto winxpok
		FOR /F %%B in ('MD5 -n "%WINDIR%\system32\drivers\etc\hosts"') do if "%%B"=="F0102132298DEA2A227B7F04E05B5348" goto winxp2ok
	)
)
goto winxp1mal

rem ###############################################################################################################################################
	
:winxpok
FOR /F %%C in ('MD5 -n "%WINDIR%\system32\drivers\etc\hosts"') do if "%%C"=="F0102132298DEA2A227B7F04E05B5348" goto winxp2ok
goto winxp1mal

:winxp2ok
echo.>>%report%
echo --^> HOSTS FILE IS CLEAN!>>%report%
echo.>>%report%
echo ======================================================>>%report%
echo ###########################################################################################>>%report%
goto winxp1final

rem ###############################################################################################################################################

:winxp1mal
echo.>>%report%
echo --^> FILE OPENED: %WINDIR%\system32\drivers\etc\hosts>>%report%
FOR /F "eol=# delims=" %%D in (%WINDIR%\system32\drivers\etc\hosts) do echo %%D>>%WINDIR%\hosts.txt
find /V /I "127.0.0.1       localhost" %WINDIR%\hosts.txt>>%WINDIR%\hosts2.txt
echo --^> DELETED LINES:>>%report%
echo --^> OBS: Deleted blank lines and commentaries will not be shown.>>%report%
echo =======================>>%report%
echo.>>%report%
attrib -r -s -h "%WINDIR%\system32\drivers\etc\hosts">nul
del /f /s /q "%WINDIR%\system32\drivers\etc\hosts">nul
if exist "%WINDIR%\system32\drivers\etc\hosts" set "restore=no" && echo Failed to Clean Hosts!>>%report% && goto winxp2mal
FOR /F "eol=- delims=" %%d in (%WINDIR%\hosts2.txt) do echo %%d>>%report%
copy "%hoststemplate%" "%WINDIR%\system32\drivers\etc\hosts">nul
if not exist "%WINDIR%\system32\drivers\etc\hosts" echo Failed to Clean Hosts!>>%report%
echo.>>%report%
attrib +r "%WINDIR%\system32\drivers\etc\hosts">nul
goto winxp2mal

:winxp2mal
echo =======================>>%report%
if /i "%restore%"=="no" goto winxp3mal
echo.>>%report%
echo -^> HOSTS FILE RESTORED!>>%report%
echo.>>%report%
goto winxp3mal

:winxp3mal
echo --^> FILE CLOSED>>%report%
echo ======================================================>>%report%
echo ###########################################################################################>>%report%
del /f /q "%WINDIR%\hosts.txt"
del /f /q "%WINDIR%\hosts2.txt"
goto winxp1final

:winxpnotexist
echo.>>%report%
echo -^>HOSTS FILE DOES NOT EXIST!>>%report%
echo.>>%report%
copy "%hoststemplate%" "%WINDIR%\system32\drivers\etc\hosts">nul
if not exist "%WINDIR%\system32\drivers\etc\hosts" echo Failed to Clean Hosts!>>%report% & goto winxpnotexist2
echo.>>%report%
attrib +r "%WINDIR%\system32\drivers\etc\hosts">nul
echo --^> HOSTS FILE WAS CREATED AND RESTORED!>>%report%
goto winxpnotexist2

:winxpnotexist2
echo --^> FILE CLOSED>>%report%
echo ======================================================>>%report%
echo ###########################################################################################>>%report%
goto winxp1final

:winxp1final
start notepad %report%
exit


rem ###############################################################################################################################################
rem ###############################################################################################################################################

:winvista

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:winseven

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Problems Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:nosupport
cls
echo.
echo                              HOSTS CLEANER
echo.
echo                                                           Version %fixverHC%	
echo ================================================================================
echo.
echo                              --- No Support ---
echo.
echo                                   XP only...
echo.
echo                            Press any key to exit.
pause>nul
exit