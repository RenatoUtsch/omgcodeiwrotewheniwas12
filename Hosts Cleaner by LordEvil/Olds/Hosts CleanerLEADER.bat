@echo off
cls
title Hosts Cleaner by LordEvil ^| Checking Windows Version
VER|FIND /i "5.1.2600">nul && set OSVER=0 && goto winxp
VER|FIND /i "6.0.600">nul && set OSVER=1 && goto winvista
VER|FIND /i "6.1.7">nul && set OSVER=2 && goto winseven
goto nosupport

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:winxp
title Hosts Cleaner by LordEvil ^| Windows XP
cls
echo.
echo                              HOSTS CLEANER
echo.
echo                                                           Version 0.46 alpha
echo ================================================================================
echo.
echo   Scanning your hosts file... please wait...

rem ======= - Setting configs - =====================================================
set "report=%HOMEDRIVE%\hosts-cleaner_report.txt"
set "hoststemplate=hosts_default1.bin"
rem ======= - End - =================================================================

echo ========================================================>>%report%
FOR %%A in (%WINDIR%\system32\drivers\etc\hosts) do (
		FOR %%a in (%hoststemplate%) do if "%%~zA"=="%%~za" goto winxpok
	)
)
goto winxp1mal

rem ###############################################################################################################################################
	
:winxpok
attrib -r -s -h "%WINDIR%\system32\drivers\etc\hosts">nul
del /f /s /q "%WINDIR%\system32\drivers\etc\hosts">nul
if exist "%WINDIR%\system32\drivers\etc\hosts" set "restore=no" && echo Failed to Clean Hosts!>>%report% && goto winxp2mal
copy "%hoststemplate%" "%WINDIR%\system32\drivers\etc\hosts">nul
attrib +r "%WINDIR%\system32\drivers\etc\hosts">nul
if /i "%restore%"=="no" goto winxp2ok
echo -^> HOSTS FILE IS CLEAN!>>%report%
goto winxp2ok

:winxp2ok
echo ========================================================>>%report%
echo #########################################################################>>%report%
goto winxp1final

rem ###############################################################################################################################################

:winxp1mal
echo --- FILE OPENED: %WINDIR%\system32\drivers\etc\hosts --->>%report%
FOR /F "eol=# delims=" %%D in (%WINDIR%\system32\drivers\etc\hosts) do echo %%D>>%WINDIR%\hosts.txt
find /V /I "127.0.0.1       localhost" %WINDIR%\hosts.txt>>%WINDIR%\hosts2.txt
echo -^> DELETED LINES:>>%report%
echo =======================>>%report%
attrib -r -s -h "%WINDIR%\system32\drivers\etc\hosts">nul
del /f /s /q "%WINDIR%\system32\drivers\etc\hosts">nul
if exist "%WINDIR%\system32\drivers\etc\hosts" set "restore=no" && echo Failed to Clean Hosts!>>%report% && goto winxp2mal
FOR /F "eol=- delims=" %%d in (%WINDIR%\hosts2.txt) do echo %%d>>%report%
copy "%hoststemplate%" "%WINDIR%\system32\drivers\etc\hosts">nul
attrib +r "%WINDIR%\system32\drivers\etc\hosts">nul
goto winxp2mal

:winxp2mal
echo =======================>>%report%
if /i "%restore%"=="no" goto winxp3mal
echo -^> HOSTS FILE RESTORED!>>%report%
goto winxp3mal

:winxp3mal
echo --- FILE CLOSED ------------------------------------------>>%report%
echo ========================================================>>%report%
echo ##################################################################>>%report%
del /f /q "%WINDIR%\hosts.txt"
del /f /q "%WINDIR%\hosts2.txt"
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
echo                                                           Version 0.44 alpha
echo ================================================================================
echo.
echo                              --- No Support ---
echo.
echo                           XP / Vista / Seven only...
echo.
echo                            Press any key to exit.
pause>nul
exit