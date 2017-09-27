@echo off
if /i "%language%"=="P" goto portugues
if /i "%language%"=="E" goto ingles
exit

rem ###############################################################################################################################################

:portugues

set "evvversion=Vers∆o"

set "option1=Escanear o Computador"
set "option2=Custom Fix"
set "option3=Lista de Erros"
set "option4=Site Oficial"
set "optionr=Voltar"
set "optionq=Sair"

set "scanning=Escaneando o Computador... Por favor aguarde..."
set "progress=Progresso do Escaneamento:"
set "file=Arquivo"
set "folder=Pasta"
set "foundmd5=Encontrado com MD5:"
set "result=Resultado:"
set "site=Site Oficial"
set "inicioscan=InÌcio do escaneamento: %DATE%, ‡s %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "filesandfolders=((((((((((((((((((((((((((( ARQUIVOS E PASTAS )))))))))))))))))))))))))))"
set "removed=Removido"
set "falharemove=Falha na RemoÁ„o"
set "infectedvaccine=Vacina Infectada"
set "falhacreate=Falha na criaÁ„o da Vacina"

set "Unrecognizederror=Erro n∆o reconhecido"
set "typeerror=Digite o erro"
set "error547=E00547-P.txt"
set "error722=E00722-P.txt"
set "presscontinue=Pressione qualquer tecla para continuar..."
set "allerrors=Todos os erros"

rem || Evil Updater ||

set "evuversion=Vers∆o"

set "startup=Carregando Atualizador... Aguarde..."
set "startup2=Atualizador Carregado."

set "updates1=Programa atualizado."
set "updates2=Este programa j† est† atualizado."

set "instpr1=Problema na Instalaá∆o"
set "instpr2=Sugerimos que baixe %programname% novamente."
set "instpr3=Pressione qualquer tecla para sair."

set "downpr1=Problema no Download"
set "downpr2=N∆o foi poss°vel checar as atualizaá‰es."
set "downpr3=Sugerimos que cheque se a internet est† conectada e"
set "downpr4=que execute este programa novamente."
set "downpr5=Se o problema persistir, tente baixar o programa %programname% novamente"
set "downpr6=ou contacte o dono do software que o EvilUpdater atualiza."
set "downpr7=Pressione qualquer tecla para iniciar o programa."

set "searching1=Procurando por atualizaá‰es... Aguarde..."
set "searching2=Atualizando... Aguarde..."

set "ops1=Pasta de atualizaá∆o n∆o encontrada! Imposs°vel atualizar %programname%!"
set "ops2="Pressione qualquer tecla para iniciar %programname%."

set "filep1=N∆o foi poss°vel iniciar a atualizaá∆o por causa de um arquivo"
set "filep2=que n∆o pìde ser exclu°do antes da atualizaá∆o."
set "filep3=Pressione qualquer tecla para iniciar %programname%."

goto final

rem ###############################################################################################################################################

:ingles

set "evvversion=Version"

set "option1=Scan the Computer"
set "option2=Custom Fix"
set "option3=Error List"
set "option4=Official Website"
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

set "Unrecognizederror=Unrecognized error"
set "typeerror=Type the Error"
set "error547=E00547-E.txt"
set "error722=E00722-E.txt"
set "presscontinue=Press any key to continue..."
set "allerrors=All errors"

rem || Evil Updater ||

set "evuversion=Version"

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
