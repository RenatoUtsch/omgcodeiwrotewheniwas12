// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\console\con_languages.h

#ifndef CON_LANGUAGES_H
#define CON_LANGUAGES_H

#include "..\common\types.h"
#include "con_misc.h"

class cLanguage
{
	bool basic_display(int numbertext);

public:
	bool Display(int number, char basecolor = BACKCOLOR, char forecolor = FORECOLOR);
};

#endif
