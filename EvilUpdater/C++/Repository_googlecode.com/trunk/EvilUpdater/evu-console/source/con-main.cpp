// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/con-main.cpp

// Entry point of the console application (.cpp file)

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "con-main.hpp" // Includes only con-main's .hpp

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #code section ////
///////////////////////

HCONSOLE Console::cMain(bool UseErrorHandler)
{
	try
	{
		// Starts console screen
		if(!misc::ReloadConsoleScreen(BACKCOLOR, TEXTCOLOR)) throw ERROR_RELOAD_SCREEN;

		// Shows in the screen:
		if(!language::Display(0)) throw ERROR_LANGUAGE;           //
		if(!language::Display(1)) throw ERROR_LANGUAGE;           //                               EVIL UPDATER
		if(!language::Display(0)) throw ERROR_LANGUAGE;           //
		if(!language::Display(2,1,14)) throw ERROR_LANGUAGE;      //________________________________________________________________________________
		if(!language::Display(0)) throw ERROR_LANGUAGE;           //
		if(!language::Display(0)) throw ERROR_LANGUAGE;           //
		if(!language::Display(101)) throw ERROR_LANGUAGE;         //                     Searching for Updates... please wait...
		if(!language::Display(0)) throw ERROR_LANGUAGE;           //
	}

	// Catch all errors thrown by try's block
	catch (HCONSOLE hconsole)
	{
		if(UseErrorHandler) ErrorHandler(hconsole);
		
		return hconsole;
	}

	// As everything was ok up to here...
	return EVERYTHING_OK;
}

void Console::ErrorHandler(HCONSOLE error)
{
	if(DEBUG_ON == 2)
	{
		switch(error)
		{
			case EVERYTHING_OK:
				break;
	
			case ERROR_RELOAD_SCREEN:
				std::cout << "EvilUpdater?cMain?ReloadConsoleScreen?: ERROR WHEN TRYING TO RELOAD CONSOLE SCREEN! TERMINATING...";
				break;
	
			case ERROR_LANGUAGE:
				std::cout << "EvilUpdater?cMain?Display?: ERROR WHEN TRYING TO DISPLAY TEXT IN THE LANGUAGE SPECIFED! TERMINATING...";
				break;
		}
	}
	else if (DEBUG_ON == 1)
	{
		if(error)
			if(!language::ShowError(2)) std::cout << "EvilUpdater?cMain?Languages?ShowError?: ERROR WHEN SHOWING ERROR! TERMINATING...";
	}
}