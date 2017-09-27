;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;                                                                                               ;;;;
;;;;                                                                                               ;;;;
;;;;                                  @@@@@  @@    @@ @@@@@@ @@                                    ;;;;
;;;;                                  @@     @@    @@   @@   @@                                    ;;;;
;;;;                                  @@@@@   @@  @@    @@   @@                                    ;;;;
;;;;                                  @@       @@@@     @@   @@                                    ;;;;
;;;;                                  @@@@@     @@    @@@@@@ @@@@@@                                ;;;;
;;;;                                                                                               ;;;;
;;;;                    @@    @@ @@@@@@  @@@@@     @@@@   @@@@@@@@ @@@@@ @@@@@@                    ;;;;
;;;;                    @@    @@ @@   @@ @   @@   @@  @@     @@    @@    @@   @@                   ;;;;
;;;;                    @@    @@ @@@@@@  @    @@ @@@@@@@@    @@    @@@@@ @@@@@@                    ;;;;
;;;;                     @@  @@  @@      @   @@  @@    @@    @@    @@    @@  @@                    ;;;;
;;;;                      @@@@   @@      @@@@@   @@    @@    @@    @@@@@ @@   @@                   ;;;;
;;;;                                                                                               ;;;;
;;;;                                                                                               ;;;;
;;;;                              ---------------------------------                                ;;;;
;;;;                              |                               |                                ;;;;
;;;;                              | -         Main File         - |                                ;;;;
;;;;                              |                               |                                ;;;;
;;;;                              ---------------------------------                                ;;;;
;;;;                                                                                               ;;;;
;;;;                                                                                               ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; EvilUpdater NSIS Script
;; Install, unninstall, update and patch your program
;;
;;


; Version setting
Var $EVUVersion
Var $NSISVersion
StrCpy $EVUVersion "v0.01 pre-alpha"
StrCpy $NSISVersion "NSIS v2.46"
; End


#~# Global Variables to set

# Do not change below!
Var InstallType
Var ProgramName
Var DownloadPage
Var UpdateFile
Var UpdateLocation

# Set the type of the Evil Updater:
; normal = normal installer
; online = download files from net
; updater = update and patch program from net files
; silent = install automatically and runs without screen (portable)
StrCpy $InstallType "normal" 

# Add the information below to run the program properly:
; $ProgramName: Configure in all "InstallType" options
; $DownloadPage: Configure in "Online" and "Updater" types only
; $UpdateFile: Configure in "Online" and "Updater" types only
; $UpdateLocation: Configure in "Online" and "Updater" types only
StrCpy $ProgramName "My Program"
StrCpy $DownloadPage "http://mysite.com/myprogram/downloads/EvilUpdater/" ; Do not forget the / after all!
StrCpy $UpdateFile "evufiles.txt"
StrCpy $UpdateLocation = "files/" ; Do not forget the / after all!

#~# End

#~# Start of the program

!include Sections.nsh
!include LogicLib.nsh
${if} $InstallType == "normal"
	!include mode_normal.nsh
${if} $InstallType == "online"
	!include mode_online.nsh
${if} $InstallType == "updater"
	!include mode_updater.nsh

