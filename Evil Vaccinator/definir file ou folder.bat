@echo off
cls

if exist "%HOMEDRIVE%\A1" set "fileexist=yes"&(
for /f %%a in ('dir /b "%HOMEDRIVE%\A1"') do if /i "%%a"=="A1" (set "filetype=file") else set "filetype=folder"
) else set "fileexist=no"
if /i "%fileexist%"=="yes" if /i "%filetype%"=="file" echo existe e e um arquivo
if /i "%fileexist%"=="yes" if /i "%filetype%"=="folder" echo existe e e uma pasta
if /i "%fileexist%"=="no" if /i echo nao existe
pause
exit

if exist "%HOMEDRIVE%\autorun.inf" set "fileexist=yes"&(
for /f %%a in ('dir /b "%HOMEDRIVE%\autorun.inf"') do if /i "%%a"=="autorun.inf" (
	set "filedir=file"
	del /f /s /q "%HOMEDRIVE%\autorun.inf"
	) else set "filedir=folderorno"
)

