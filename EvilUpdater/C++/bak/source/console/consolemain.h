// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\console\consolemain.h

#ifndef CONSOLEMAIN_H
#define CONSOLEMAIN_H

#include "..\common\types.h"
#include "..\common\updater.h"
#include "con_languages.h"

/// Global Variables
class ConsoleM
{
	void ReloadConsoleScreen(char backgroundc = BACKCOLOR, char foregroundc = FORECOLOR);

public:
	int cMain();
};

#endif
