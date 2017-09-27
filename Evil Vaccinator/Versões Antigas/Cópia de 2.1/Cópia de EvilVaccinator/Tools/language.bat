@echo off
if /i "%language%"=="P" goto portugues
if /i "%language%"=="E" goto ingles
exit

rem ###############################################################################################################################################

:portugues
set "option1=Escanear o Computador"
set "option2=Custom Fix"
set "option3=Remover Vacina"
set "option4=Limpar Quarentena"
set "option5=Lista de Erros"
set "optionr=Voltar"
set "optionq=Sair"

set "scanning=Escaneando o Computador... Aguarde por favor..."
set "progress=Progresso do Escaneamento:"
set "file=Arquivo"
set "folder=Pasta"
set "foundmd5=Encontrado com MD5:"
set "result=Resultado:"
set "site=Site Oficial"
set "inicioscan=Início do escaneamento: %DATE%, às %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "filesandfolders=((((((((((((((((((((((((((( ARQUIVOS E PASTAS )))))))))))))))))))))))))))"
set "removed=Removido"
set "falharemove=Falha na Remoção"
set "infectedvaccine=Vacina Infectada"
set "falhacreate=Falha na criação da Vacina"

rem || Evil Updater ||


set "startup=Carregando Atualizador... Aguarde..."
set "startup2=Atualizador Carregado."

set "updates1=Programa atualizado."
set "updates2=Este programa j  est  atualizado."

set "instpr1=Problema na Instala‡Æo"
set "instpr2=Sugerimos que baixe %programname% novamente."
set "instpr3=Pressione qualquer tecla para sair."

set "downpr1=Problema no Download"
set "downpr2=NÆo foi poss¡vel checar as atualiza‡äes."
set "downpr3=Sugerimos que cheque se a internet est  conectada e"
set "downpr4=que execute este programa novamente."
set "downpr5=Se o problema persistir, tente baixar o programa %programname% novamente"
set "downpr6=ou contacte o dono do software que o EvilUpdater atualiza."
set "downpr7=Pressione qualquer tecla para iniciar o programa."

set "searching1=Procurando por atualiza‡äes... Aguarde..."
set "searching2=Atualizando... Aguarde..."

set "ops1=Pasta de atualiza‡Æo nÆo encontrada! Imposs¡vel atualizar %programname%!"
set "ops2="Pressione qualquer tecla para iniciar %programname%."

set "filep1=NÆo foi poss¡vel iniciar a atualiza‡Æo por causa de um arquivo"
set "filep2=que nÆo p“de ser exclu¡do antes da atualiza‡Æo."
set "filep3=Pressione qualquer tecla para iniciar %programname%."

goto final

rem ###############################################################################################################################################

:ingles
set "option1=Scan the Computer"
set "option2=Custom Fix"
set "option3=Remove Immunization"
set "option4=Clean Quarantine"
set "option5=Error List"
set "optionr=Return"
set "optionq=Quit"

set "progress=Scan Progress:"

set "scanning=Scanning the Computer... Please Wait..."
set "progress=Scan Progress:"
set "file=File"
set "folder=Folder"
set "foundmd5=Found with MD5:"
set "result=Result:"
set "site=Official Website"
set "inicioscan=Start Scanning: %DATE%, at %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "filesandfolders=((((((((((((((((((((((((((( FILES AND FOLDERS )))))))))))))))))))))))))))"
set "removed=Removed"
set "falharemove=Failed to Remove"
set "infectedvaccine=Infected Vaccine"
set "falhacreate=Failed to create the Vaccine"

rem || Evil Updater ||


set "startup=Starting Updater... Please wait..."
set "startup2=Updater Started."

set "updates1=Program updated."
set "updates2=This program already is updated."

set "downpr1=Download Problem"
set "downpr2=Could not check for updates."
set "downpr3=We suggest to make sure that the internet is connected"
set "downpr4=and start this program again."
set "downpr5=If the problem continues, try downloading %programname% again"
set "downpr6=or contact the owner of the software that EvilUpdater updates."
set "downpr7=Press any key to start %programname%."

set "searching1=Searching for Updates... Please wait..."
set "searching2=Updating... Please wait..."

set "ops1=Update Folder not found! Could not update %programname%!"
set "ops2="Press any key to start %programname%."

set "filep1=Could not start updating because one file"
set "filep2=could not be excluded before the update."
set "filep3=Pressione qualquer tecla para iniciar %programname%."

goto final

rem ###############################################################################################################################################

:final
goto :eof