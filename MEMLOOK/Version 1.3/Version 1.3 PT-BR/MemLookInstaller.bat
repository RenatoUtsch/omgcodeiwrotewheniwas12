@echo off
@echo.
title MEMLOOK SETUP - MEMLOOK VERSAO 1.3 PT-BR
@echo.
md c:\MEMLOOK
md c:\MEMLOOK\SCANS
md c:\MEMLOOK\DOCUMENTATION
move sys1.memlooksys c:\MEMLOOK
move sys2.memlooksys c:\WINDOWS\system32
move sys3.memlooksys "%userprofile%\Desktop"
move sys4.memlooksys c:\MEMLOOK\DOCUMENTATION
rename c:\MEMLOOK\sys1.memlooksys memlook.bat
rename c:\WINDOWS\system32\sys2.memlooksys memlookuninstaller.bat
rename "%userprofile%\Desktop\sys3.memlooksys" MemLook.bat
rename c:\MEMLOOK\DOCUMENTATION\sys4.memlooksys FAQ.txt
@echo.
@echo MEMLOOK INSTALADO COM SUCESSO.
@echo.
@echo.
@echo.
@echo PASTA DO MEMLOOK: C:\MEMLOOK
@echo.
@echo PASTA DOS SCANS: C:\MEMLOOK\SCANS
@echo.
@echo PASTA DO FAQ: C:\MEMLOOK\FAQ
@echo.
@echo.
@echo.
@echo AGORA VOCE PODE EXECUTAR O MEMLOOK DE SEU DESKTOP.
@echo.
pause
@echo.
del memlookinstaller.bat
exit