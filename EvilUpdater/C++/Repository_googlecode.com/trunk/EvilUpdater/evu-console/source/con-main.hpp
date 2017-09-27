#pragma once

// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/con-main.hpp

// Entry point of the console application

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "types.hpp"
#include "misc.hpp"
#include "languages.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #code section ////
///////////////////////

class Console
{
	// Private
	void ErrorHandler(HCONSOLE error); // Handles the errors generated by 'cMain'

protected:
	// Protected

public:
	// Public
	HCONSOLE cMain(bool UseErrorHandler = false); // Start of console
};