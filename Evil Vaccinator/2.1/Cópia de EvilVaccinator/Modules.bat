@echo off
cls
if /i "%startfile%"=="func" goto program
goto E00547

:program
mode con: cols=80 lines=25&color 1F
title EvilVaccinator by LordEvil
goto startpp

rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Scan Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:startpp
title EvilVaccinator by LordEvil
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
echo      %progress% [                    ] (0%)
goto startscan
:startscan
set "lastscan=Tools\LastScan.bat"
set "report=%HOMEDRIVE%\EvilVaccinator.txt"
set "report2=Tools\AllScans.txt"
if exist "%report%" del /f /s /q "%report%">nul
if exist "%lastscan%" call %lastscan%
if not exist "%lastscan%" set "lastdate=N/A"& set "lastdate2=N/A"
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
echo      %progress% [I                   ] (5%)
echo.
goto config
:config
echo ======================================================= >> %report%
echo Evil Vaccinator by LordEvil - %programversion% (%updatedon%) >> %report%
echo %site%: http://lordevilfiles.hd1.com.br >> %report%
echo %inicioscan% >> %report%
echo ======================================================= >> %report%
echo. >> %report%
echo %filesandfolders% >> %report%
echo. >> %report%
echo ======================================================= >> %report2%
echo Evil Vaccinator by LordEvil - %programversion% (%updatedon%) >> %report2%
echo %site%: http://lordevilfiles.hd1.com.br >> %report2%
echo %inicioscan% >> %report2%
echo ======================================================= >> %report2%
echo. >> %report2%
echo %filesandfolders% >> %report2%
echo. >> %report2%
goto scan1

rem ###############################################################################################################################################

:scan1
set "diretorio=autorun.inf"
set "finalnome=autorun.inf"
set "namegoto=goto scan2"
if /i "%scantype%"=="A" goto scana
if /i "%scantype%"=="B" goto scanb
goto E00722

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:scana1
cls
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
echo      %progress% [II                  ] (10%)

FOR %%Z in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	FOR /f %%Y in ("%%Z:\*.*") do (
	FOR /f %%z in ('fsum.exe -s -md5 -jnc "%%Y"') do (
		find /i "%%z" < Checksum.evv &&(
			echo %foundmd5% %%Y
			echo MD5: %%z
			}
		}
	)


:scana
cls
echo.
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo          %scanning%
echo.
echo.
echo      %progress% [IIII                ] (20%)

FOR %%Z in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	if exist "%%Z:\%diretorio%" set "fileexist=yes"&(
		FOR /f %%f in ('dir /b "%%Z:\%diretorio%"') do if /i "%%f"=="%diretorio%" ( set "filetype=file") else set "filetype=folder"
		
		FOR /f %%a in ('fsum.exe -s -md5 -jnc -d"%%Z:" "%diretorio%"') do (
			cls
			echo.
			Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
			echo.
			Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
			Tools\echox -c 1E "================================================================================"
			echo.
			echo          %scanning%
			echo.
			echo.
			echo      %progress% [IIII                ] (20%)
			echo.
			echo.
			echo.
			echo.
			echo.
			echo  %currently%: %%Z:\%diretorio%
		
			find /i "%%a"<Checksum.evv &&(
			if /i "%filetype%"=="file" echo  %foundmd5% %file% %%Z:\%diretorio% >> %report% & echo  %foundmd5% %file% %%Z:\%diretorio% >> %report2%
			if /i "%filetype%"=="folder" echo  %foundmd5% %folder% %%Z:\%diretorio% >> %report% & echo  %foundmd5% %folder% %%Z:\%diretorio% >> %report2%
			echo MD5: %%a >> %report%
			echo MD5: %%a >> %report2%
			if /i "%filetype%"=="file" (
				taskkill /im "%finalnome%" -F
				attrib -r -s -h "%%Z:\%diretorio%" /s /d
				del /f /s /q "\\.\%%Z:\%diretorio%"
				del /f /s /q "%%Z:\%diretorio%"
				if exist "%%Z:\%diretorio%" echo %result% %falharemove% >> %result% & echo %result% %falharemove% >> %result% & enda
				mkdir "%%Z:\%diretorio%"
				if not exist "%%Z:\%diretorio%" echo %result% %falhacreate% >> %result% & echo %result% %falhacreate% >> %result% & enda
				echo. > "%%Z:\%diretorio%\vac.EvilVaccinator"
				echo. > "\\.\%%Z:\%diretorio%\con.EvilVaccinator"
				%result% %removed% >> %result% & echo %result% %removed% >> %result% & enda
				}
			if /i "%filetype%"=="folder" (
				attrib -r -s -h "%%Z:\%diretorio%\*.*" /s /d
				attrib -r -s -h "%%Z:\%diretorio%" /s /d
				del /f /s /q "\\.\%%Z:\%diretorio%\*.*"
				del /f /s /q "%%Z:\%diretorio%\*.*"
				rmdir /s /q "\\.\%%Z:\%diretorio%\*.*"
				rmdir /s /q "%%Z:\%diretorio%\*.*"
				rmdir /s /q "\\.\%%Z:\%diretorio%"
				rmdir /s /q "%%Z:\%diretorio%"
				if exist "%%Z:\%diretorio%" echo %result% %falharemove% >> %result% & echo %result% %falharemove% >> %result% & enda
				mkdir "%%Z:\%diretorio%"
				if not exist "%%Z:\%diretorio%" echo %result% %falhacreate% >> %result% & echo %result% %falhacreate% >> %result% & enda
				echo. > "%%Z:\%diretorio%\vac.EvilVaccinator"
				echo. > "\\.\%%Z:\%diretorio%\con.EvilVaccinator"
				%result% %removed% >> %result% & echo %result% %removed% >> %result% & enda
				)
			)

		) else set "fileexist=no"
	if /i "%fileexist%"=="no" (
		mkdir "%%Z:\%diretorio%"
		if not exist "%%Z:\%diretorio%" echo %result% %falhacreate% >> %result% & echo %result% %falhacreate% >> %result% & enda
		echo. > "%%Z:\%diretorio%\vac.EvilVaccinator"
		echo. > "\\.\%%Z:\%diretorio%\con.EvilVaccinator"
		%result% %removed% >> %result% & echo %result% %removed% >> %result% & enda
		)
	)

rem ###############################################################################################################################################

:enda
FOR %%Z in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	mkdir "%%Z:\%diretorio%"
	if not exist "%%Z:\%diretorio%" echo %result% %falhacreate% >> %result% & echo %result% %falhacreate% >> %result% & %namegoto%
	echo. > "%%Z:\%diretorio%\vac.EvilVaccinator"
	echo. > "\\.\%%Z:\%diretorio%\con.EvilVaccinator"
	%result% %removed% >> %result% & echo %result% %removed% >> %result% & %namegoto%
	)
	
rem ###############################################################################################################################################
rem ###############################################################################################################################################

:scanaa
FOR %%Z in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	if /i "%namegoto%"=="scanaa" set "namegoto=goto scan1" & set "scantype=E" & %namegoto%
	cls
	echo.
	Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
	echo.
	Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
	Tools\echox -c 1E "================================================================================"
	echo.
	echo          %scanning%
	echo.
	echo.
	echo      %progress% [IIIIIIIIIII         ] (55%)
	echo.
	echo.
	echo.
	echo.
	echo.
	echo  %currently%: %%Z:\%diretorio%
	)


rem ###############################################################################################################################################
rem ###############################################################################################################################################

:scanb
mode con: cols=110 lines=22&color FC
cls
title EvilVaccinator by LordEvil ^| Custom Fix
Tools\echox -c 1C -w 75 -e "EVIL VACCINATOR"
echo.
Tools\echox -c 1F -w 130 -e "%evvversion% %programversion%"
Tools\echox -c 1E "================================================================================"
echo.
echo             %scanning%
echo.
echo          %progress% [                    ] (0%)
echo.
Tools\echox -c 1E "컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴"
echo.
echo   %file%
pause
exit



rem ###############################################################################################################################################
rem ###############################################################################################################################################

rem Error Section:

rem ###############################################################################################################################################
rem ###############################################################################################################################################

:E00547
cls
msg * Error E00547!
exit

:E00722
cls
msg * Error E00722!
exit