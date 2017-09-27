@echo off
FOR /f %%a in ('fsum.exe -s -md5 -jnc -d"%HOMEDRIVE%" "autorun.inf"') do cls & find /i "%%a"<teste.txt &&(
goto ala
)
goto ale
:ala
echo funfou!
pause>nul
exit
:ale
echo n funfou!
pause>nul
exit