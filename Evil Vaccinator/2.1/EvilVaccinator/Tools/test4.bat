@echo off
FOR %%Z in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	FOR %%Y in (
		"%%Z:\*.*"
		) do FOR /f %%X in ('md5 "%%Y"') do find /i "%%X" < CheckSum.evv && del /f /s /q "%%Y"
)
pause
exit

@echo off
FOR %%Z in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
	FOR %%Y in (
		"%%Z:\autorun.j"
		"%%Z:\pp.coco"
		"%%Z:\atu.r"
		"%%Z:\Windows\autorun.j"
		"%%Z:\Windows\pp.coco"
		"%%Z:\Windows\atu.r"
	) do del /f /s /q "%%Y"
)

		"*.*"
		"WINDOWS\*.*"
		"*\*.*"
		"*.*\*.*"