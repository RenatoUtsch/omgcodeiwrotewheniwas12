#pragma once

// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/misc.hpp

// Misc functions for making EvilUpdater more beautiful *-*

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "types.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #code section ////
///////////////////////

namespace misc
{
	bool ReloadConsoleScreen(int backgroundc = BACKCOLOR, int foregroundc = TEXTCOLOR);
	bool coutc(char msg[257], int backgroundc = BACKCOLOR, int foregroundc = TEXTCOLOR, int dbackground = BACKCOLOR, int dforeground = TEXTCOLOR);

	class Basic_CoutC
	{
	public:
		// Function for use of coutc - But can be used by other functions
		bool colorchange(int cbackground = BACKCOLOR, int cforegorund = TEXTCOLOR);
	};
};