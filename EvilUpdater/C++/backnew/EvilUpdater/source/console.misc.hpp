#pragma once
// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/console.misc.h

// Misc functions for making EvilUpdater more beautiful *-*

#include "__types.hpp"

namespace cmisc
{
	bool ReloadConsoleScreen(int backgroundcolor = BACKCOLOR, int foregroundcolor = TEXTCOLOR);
	bool coutc(char msg[257], int backgroundc = BACKCOLOR, int foregroundc = TEXTCOLOR, int dbackground = BACKCOLOR, int dforeground = TEXTCOLOR);

	namespace basic_cmisc
	{
		// Function for use of coutc - But can be used by other functions
		bool colorchange(int cbackground = BACKCOLOR, int cforegorund = TEXTCOLOR);
	};
};