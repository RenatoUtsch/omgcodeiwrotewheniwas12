@echo off
title Hosts Cleaner by LordEvil
echo.
echo   HOSTS CLEANER
echo.
echo  Please wait...
set "report=%HOMEDRIVE%\hosts-cleaner_report.txt"
set "hoststemplate=hosts_default1.bin"
echo =====================================>>%report%
FOR /F %%A in (%WINDIR%\system32\drivers\etc\hosts) do (
	FOR /F %%a in (%hoststemplate%) do set "modes=1" & if "%%A"=="%%a" goto 1ok
	FOR %%B in (%WINDIR%\system32\drivers\etc\hosts) do (
		FOR %%b in (%hoststemplate%) do set "modes=2" & if "%%~zB"=="%%~zb" goto 2ok
	)
)
goto 1mal

:1ok
FOR %%B in (%WINDIR%\system32\drivers\etc\hosts) do (
	FOR %%b in (%hoststemplate%) do set "modes=12" & if "%%~zB"=="%%~zb" goto 2ok
)
goto 1mal

:2ok
echo HOSTS FILE IS CLEAN>>%report%
echo =====================================>>%report%
echo ##################################################################>>%report%
goto 1final

:1mal
echo --- FILE OPENED: %WINDIR%\system32\drivers\etc\hosts --->>%report%
FOR /F "eol=# delims=" %%C in (%WINDIR%\system32\drivers\etc\hosts) do echo %%C >> %WINDIR%\hosts.txt
find /V /I "127.0.0.1       localhost" %WINDIR%\hosts.txt >> %WINDIR%\hosts2.txt
echo -^> LINES DELETED (comentários modificados e linhas em branco não serão mostrados):>>%report%
echo %modes%>>%report%
echo ==========>>%report%
FOR /F "eol=- delims=" %%c in (%WINDIR%\hosts2.txt) do echo %%c>>%report%
attrib -r -s -h "%WINDIR%\system32\drivers\etc\hosts"
del /f /s /q "%WINDIR%\system32\drivers\etc\hosts"
copy "%hoststemplate%" "%WINDIR%\system32\drivers\etc\hosts"
attrib +r "%WINDIR%\system32\drivers\etc\hosts"
echo ==========>>%report%
echo -^> HOSTS FILE RESTORED!>>%report%
echo --- FILE CLOSED ---------------------------------------->>%report%
echo ##################################################################>>%report%
del /f /q "%WINDIR%\hosts.txt"
del /f /q "%WINDIR%\hosts2.txt"
goto 1final

:1final
start notepad %report%
exit