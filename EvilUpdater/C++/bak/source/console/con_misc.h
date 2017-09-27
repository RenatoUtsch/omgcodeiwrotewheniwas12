// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\console\con_misc.h

#ifndef CON_MISC_H
#define CON_MISC_H

#include "..\common\types.h"


/// coutc by LordEvil
//
// Works on C++. May work on C.
// You send your text and the color that you want.
// Prints that on the screen.
// Choose the color as the color prompt command (0-9 and A-F):
// Common use: coutc("text", background-color, text-color);
// Remember to create a coutwithcolor obj using:
// coutwithcolor coutcolor;
// then, use coutcolor.coutc("text", background-color, text-color);
class coutwithcolor
{
    void backcolor(char background);
    void forecolor(char foreground);

public:
    void coutc(char text[256], char backgroundcolor, char foregroundcolor, char defaultbackground = BACKCOLOR, char defaultforeground = FORECOLOR);
};

#endif
