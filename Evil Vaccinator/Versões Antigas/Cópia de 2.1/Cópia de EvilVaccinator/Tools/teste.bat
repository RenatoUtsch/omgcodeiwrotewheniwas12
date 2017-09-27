@echo off
	pause
FOR /f %%Y in ("C:\*.*") do goto 3
pause
:3
FOR /f %%z in ('fsum.exe -s -md5 -jnc "%%Y"') do goto 2
	pause	
:2
find /i "%%z" < Checksum.evv &&(
	echo %foundmd5% %%Y
	echo MD5: %%z
	pause
	)
		pause