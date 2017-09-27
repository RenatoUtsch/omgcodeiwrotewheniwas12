@echo off
if /i "%language%"=="P" goto portugues
if /i "%language%"=="E" goto ingles
if /i "%language%"=="D" goto alemao
goto error2

rem ###############################################################################################################################################

:portugues
set "option1=Escanear o Computador"
set "option2=Site Oficial"
set "option3=Digitar Comandos Avancados"
set "option4=Lista de Erros"
set "option5=Remover Vacina"
set "option6=Desinstalar"
set "option7=Custom Fix"
set "option8=Enviar logs"
set "optionQ=Sair"
set "advanced=Digite o Comando"
set "Unrecognized3=Comando nao reconhecido"
set "Unrecognizederror=Erro nao reconhecido"
set "return=Voltar"
set "typeerror=Digite o erro"
set "error547=E00547-P.txt"
set "error565=E00565-P.txt"
set "error583=E00583-P.txt"
set "error652=E00652-P.txt"
set "error775=E00775-P.txt"
set "presscontinue=Pressione qualquer tecla para continuar..."
set "allerrors=Todos os erros"
set "inicioscan=Início do escaneamento: %DATE%, às %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "filesandfolders=((((((((((((((((((((((((((( ARQUIVOS E PASTAS )))))))))))))))))))))))))))"
set "removed=Removido"
set "falharemove=Falha na Remoção"
set "infectedvaccine=Vacina Infectada"
set "falhacreate=Falha na criação da Vacina"
set "proceduresinfected=Procedimentos a realizar: olhe em"
set "registry=((((((((((((((((((((((((((((((((((( REGISTRO ))))))))))))))))))))))))))))))))))))"
set "adicionais=(((((((((((((((((((((((((((((((((( ADICIONAIS )))))))))))))))))))))))))))))))))))"
set "fimscan=Fim do escaneamento: %DATE%, às %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "ultimoscan=Último escaneamento em"
set "ultimoscan2=às"
set "scanning=Escaneando... Por favor aguarde..."
set "currently=Escaneando Atualmente"
set "code=Codigo"
set "fixing=Aguarde, Fixando"
set "ourvaccine=Esta é uma vacina do EvilVaccinator"
set "noexist=Este Arquivo/Pasta não existe"
set "fileexcluded=Por favor digite o nome do Arquivo / Pasta a ser excluido e vacinado."
set "directoryexcluded=Por favor digite o diretorio do Arquivo / Pasta a ser excluido e vacinado."
set "namefile=nome"
set "directoryfile=diretorio"
set "caution1=Atencao! Este e um escaneamento muito poderoso e perigoso! So use se estiver sendo orientado"
set "caution2=por analistas! Se nao tiver sido, por favor volte digitando 1 e Enter!"
set "caution3=Se ainda deseja fazer este escaneamento, escreva o codigo de acesso por favor."
set "caution4=Por favor tenha certeza que o arquivo Custom.EvilVaccinator existe no seu disco local (%HOMEDRIVE%)"
set "caution5=e digite Y. Se nao, digite 1."
set "currentv=Versão Atual"
set "lastv=Última Versão"
goto final

rem ###############################################################################################################################################

:ingles
set "option1=Scan the Machine"
set "option2=Official Site"
set "option3=Type Advanced Commands"
set "option4=Error List"
set "option5=Remove Vaccine"
set "option6=Uninstall"
set "option7=Custom Fix"
set "option8=Enviar logs"
set "optionQ=Quit"
set "advanced=Type the Command"
set "Unrecognized3=Unrecognized command"
set "Unrecognizederror=Unrecognized error"
set "return=Back"
set "typeerror=Type the Error"
set "error547=E00547-E.txt"
set "error565=E00565-E.txt"
set "error583=E00583-E.txt"
set "error652=E00652-E.txt"
set "error775=E00775-E.txt"
set "presscontinue=Press any key to continue..."
set "allerrors=All errors"
set "inicioscan=Start Scanning: %DATE%, at %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "filesandfolders=(((((((((((((((((( FILES AND FOLDERS ))))))))))))))))))"
set "removed=removed"
set "falharemove=Failed to Remove"
set "infectedvaccine=Infected Vaccine"
set "falhacreate=Failed to create the Vaccine"
set "proceduresinfected=Procedures to perform: look in"
set "registry=((((((((((((((((((((((((((((((((((( REGISTRY ))))))))))))))))))))))))))))))))))))"
set "adicionais=(((((((((((((((((((((((((((((((( ADDITIONAL )))))))))))))))))))))))))))))))))))"
set "fimscan=End Scanning: %DATE%, at %TIME:~0,-9%:%TIME:~3,2%:%TIME:~6,2%"
set "ultimoscan=Last scan in"
set "scanning=Scanning... Please wait..."
set "ultimoscan2=at"
set "currently=Currently Scanning"
set "code=Code"
set "fixing=Wait, Fixing"
set "ourvaccine=This is a Vaccine from EvilVaccinator"
set "noexist=This File/Folder does not exist"
set "fileexcluded=Please enter the name of the file / folder to be deleted and vaccinated."
set "directoryexcluded=Please enter the directory of the file / folder to be deleted and vaccinated."
set "namefile=name"
set "directoryfile=directory"
set "caution1=Attention! This is a very powerful dangerous scanning! Only use it if you are being driven"
set "caution2=by analysts! If not, please return by typing 1 and Enter!"
set "caution3=If you still want to do this scan, type the access code please."
set "caution4=Please make sure that the Custom.EvilVaccinator file exists on your hard drive (%HOMEDRIVE%)"
set "caution5=and type Y. If not, type 1."
set "currentv=Current Version"
set "lastv=Last Version"
goto final

rem ###############################################################################################################################################

:alemao
set "option1=Scannen Sie den Computer"
set "option2=Offizielle Website"
set "option3=Sie erweiterte Befehle"
set "option4=Fehlerliste"
set "option5=Entfernen Vaccine"
set "option6=Deinstallieren"
set "optionQ=Aus"
set "advanced=Geben Sie den Befehl"
set "Unrecognized3=Unbekannter Befehl"
set "Unrecognizederror=Unbekannter Fehler"
set "return=Zurück"
set "typeerror=Geben Sie den Fehler"
set "error547=E00547-D.txt"
set "error565=E00565-D.txt"
set "error652=E00652-D.txt"
set "error583=E00583-D.txt"
set "presscontinue=Drücken Sie eine beliebige Taste weiterhin..."
set "allerrors=Alle Fehler"
set "registry=((((((((((((((((((((((((((((((((((( REGISTRY ))))))))))))))))))))))))))))))))))))"
goto final

rem ###############################################################################################################################################

:final
goto :eof

rem ###############################################################################################################################################

rem Error Session:

rem ###############################################################################################################################################

:error1
msg * Error E00547.
exit

rem ###############################################################################################################################################

:error2
taskkill /im EvilVaccinator.exe
msg * Error E00565.
exit