 # Copyright (c) LordEvil - Licensed under GNU GPL
 # For more information, see License.txt in the \wiki folder
 #
 #
 # Makefile for EvilUpdater
 #
 # Compiler: MinGW (g++)
 # Linker: MinGW (g++)
 #

CC = g++
FILES = source/common/EvilUpdater.cpp source/common/types.h source/common/updater.cpp source/common/updater.h \
source/console/consolemain.cpp source/console/consolemain.h source/console/con_languages.cpp source/console/con_languages.h source/console/con_misc.cpp source/console/con_misc.h
 # source/gui/guimain.cpp source/gui/guimain.h source/gui/gui_languages.cpp source/gui/gui_languages.h source/gui/gui.cpp source/gui/gui.h source/gui/gui_misc.cpp source/gui/gui_misc.h
OBJECTS = obj/types.o obj/updater.o \
obj/consolemain.o obj/con_languages.o obj/con_misc.o
 # guimain.o gui_languages.o gui.o gui_misc.o
OPTIONS =-mwindows
OUTEXE = EvilUpdater.exe

prebuild: $(FILES)
#	$(CC) $(OPTIONS) -c source/common/EvilUpdater.cpp -o obj/EvilUpdater.o
	$(CC) $(OPTIONS) -c source/common/types.h -o obj/types.o
	$(CC) $(OPTIONS) -c source/common/updater.cpp source/common/updater.h -o obj/updater.o
	$(CC) $(OPTIONS) -c source/console/consolemain.cpp source/console/consolemain.h -o obj/consolemain.o
	$(CC) $(OPTIONS) -c source/console/con_languages.cpp source/console/con_languages.h -o obj/con_languages.o
	$(CC) $(OPTIONS) -c source/console/con_misc.cpp source/console/con_misc.h -o obj/con_misc.o
	$(CC) $(OPTIONS) -o $(OUT_EXE) source/common/EvilUpdater.cpp $(OBJECTS)
	
	

 # $(CC) $(OPTIONS) -c $(FILES)
	
build: $(OBJECTS)
	$(CC) $(OPTIONS) -o $(OUT_EXE) $(OBJECTS)
	
clean:


rebuild:
	clean build