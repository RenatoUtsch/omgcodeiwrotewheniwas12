@echo off
rem para extrair para a pasta onde esta o executavel (/I)
xcopy /y "%filefolder%\*.*" "..\%folderprogram%" /E /H /R /I
pause
exit