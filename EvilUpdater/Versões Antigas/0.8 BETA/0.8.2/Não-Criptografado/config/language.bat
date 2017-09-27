@echo off
if /i "%language%"=="Pb" goto portuguesebrazil
if /i "%language%"=="En" goto english
exit

rem ###############################################################################################################################################

:portuguesebrazil
set "startup=Carregando Atualizador... Aguarde..."
set "startup2=Atualizador Carregado."

set "updates1=Programa atualizado."
set "updates2=Este programa ja esta atualizado."

set "instpr1=Problema na Instalacao"
set "instpr2=Sugerimos que baixe este programa novamente."
set "instpr3=Pressione qualquer tecla para sair."

set "downpr1=Problema no Download"
set "downpr2=Nao foi possivel checar as atualizacoes."
set "downpr3=Sugerimos que cheque se a internet está conectada e"
set "downpr4=que execute este programa novamente."
set "downpr5=Se o problema persistir, tente baixar este programa novamente"
set "downpr6=ou contacte o dono do software."
set "downpr7=Pressione qualquer tecla para iniciar o programa."

goto final

rem ###############################################################################################################################################

:english
set "startup=Starting Updater... Please wait..."
set "startup2=Updater Started."

set "updates1=Program updated."
set "updates2=This program already is updated."

set "instpr1=Install Problem"
set "instpr2=We suggest to download this program again."
set "instpr3=Press any key to exit."

set "downpr1=Download Problem"
set "downpr2=Could not check for updates."
set "downpr3=We suggest to make sure that the internet is connected"
set "downpr4=and start this program again."
set "downpr5=If the problem continues, try downloading this program again"
set "downpr6=or contact the owner of the software."
set "downpr7=Press any key to start the program."

goto final

rem ###############################################################################################################################################

:final
goto :eof