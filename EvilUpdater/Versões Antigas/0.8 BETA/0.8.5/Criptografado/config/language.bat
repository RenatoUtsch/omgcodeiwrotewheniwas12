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
set "instpr2=Sugerimos que baixe %programname% novamente."
set "instpr3=Pressione qualquer tecla para sair."

set "downpr1=Problema no Download"
set "downpr2=Nao foi possivel checar as atualizacoes."
set "downpr3=Sugerimos que cheque se a internet esta conectada e"
set "downpr4=que execute este programa novamente."
set "downpr5=Se o problema persistir, tente baixar %programname% novamente"
set "downpr6=ou contacte o dono do software que o EvilUpdater atualiza."
set "downpr7=Pressione qualquer tecla para iniciar o programa."

set "nosup1=Sem Suporte"
set "nosup2=somente"
set "nosup3=Pressione qualquer tecla para sair."

set "searching1=Procurando por atualizacoes... Aguarde..."
set "searching2=Atualizando... Aguarde..."

set "ntud1=Essa nao e a versao mais recente do EvilUpdater."
set "ntud2=Essa versao pode conter alguns bugs e vulnerabilidades nao corrigidos."
set "ntud3=A versao utilizada por este programa e:"
set "ntud4=A versao mais recente do EvilUpdater e:"
set "ntud5=Ainda assim deseja continuar?"
set "ntdu6=S/N"
set "ntduS=S"
set "ntduN=N"

set "ntudup1=O EvilUpdater nao conseguiu verificar se esta em sua versao mais recente."
set "ntudup2=Ainda assim deseja continuar?"

set "checkversion1=Checando versao do EvilUpdater... Aguarde..."

set "ops1=Pasta de atualizacao nao encontrada! Impossivel atualizar %programname%!"
set "ops2="Esse erro pode ser sinal de um malware."
set "ops3="Pressione qualquer tecla para iniciar %programname%."

set "filep1=Nao foi possivel iniciar a atualizacao por causa de um arquivo"
set "filep2=que nao pode ser excluido antes da atualizacao."
set "filep3=Isso pode ter sido causado por um malware."
set "filep4=Pressione qualquer tecla para iniciar %programname%."

goto final

rem ###############################################################################################################################################

:english
set "startup=Starting Updater... Please wait..."
set "startup2=Updater Started."

set "updates1=Program updated."
set "updates2=This program already is updated."

set "instpr1=Install Problem"
set "instpr2=We suggest to download %programname% again."
set "instpr3=Press any key to exit."

set "downpr1=Download Problem"
set "downpr2=Could not check for updates."
set "downpr3=We suggest to make sure that the internet is connected"
set "downpr4=and start this program again."
set "downpr5=If the problem continues, try downloading %programname% again"
set "downpr6=or contact the owner of the software that EvilUpdater updates."
set "downpr7=Press any key to start %programname%."

set "nosup1=No Support"
set "nosup2=only"
set "nosup3=Press any key to exit."

set "searching1=Searching for Updates... Please wait..."
set "searching2=Updating... Please wait..."

set "ntud1=This is not the most recent version of EvilEupdater."
set "ntud2=This version may have bugs and vunerabilities."
set "ntud3=The version used by this program is:"
set "ntud4=The EvilUpdater most recent version is:"
set "ntud5=Do you still want to continue?"
set "ntdu6=Y/N"
set "ntduS=Y"
set "ntduN=N"

set "ntudup1=Could not verify if this is the latest version of EvilUpdater."
set "ntudup2=Do you still want to continue?"

set "checkversion1=Checking the EvilUpdater version... Please Wait..."

set "ops1=Update Folder not found! Could not update %programname%!"
set "ops2="This Error can be a signal of a malware."
set "ops3="Press any key to start %programname%."

set "filep1=Could not start updating because one file"
set "filep2=could not be excluded before the update."
set "filep3=This can be a signal of malware."
set "filep4=Pressione qualquer tecla para iniciar %programname%."

goto final

rem ###############################################################################################################################################

:final
goto :eof