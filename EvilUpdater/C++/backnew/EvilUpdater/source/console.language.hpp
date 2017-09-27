#pragma once
// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/console.language.h

// This class converts the string number codes into real strings, and within
// the language set in "__types.h"

#include "__types.hpp"
#include "console.misc.hpp"

namespace clanguage
{
	bool Display(int number, char basecolor = BACKCOLOR, char forecolor = TEXTCOLOR);
};