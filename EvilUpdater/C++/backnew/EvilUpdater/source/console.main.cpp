// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/console.main.cpp

// Entry point of the console version of the software (.cpp file)

#include "console.main.hpp"

char Console::cStart(StartMode smode)
{
	// Declares a instance of updater class
	Updater updater;

	char tempresult;

	// Starts console screen
	if(!cmisc::ReloadConsoleScreen()) return -2;

	// Shows in the screen:
	if(!clanguage::Display(0)) return -1;           //
	if(!clanguage::Display(1)) return -1;           //                               EVIL UPDATER
	if(!clanguage::Display(0)) return -1;           //
	if(!clanguage::Display(2,'1','E')) return -1;   //________________________________________________________________________________
	if(!clanguage::Display(0)) return -1;           //
	if(!clanguage::Display(0)) return -1;           //
	if(!clanguage::Display(101)) return -1;         //                     Searching for Updates... please wait...
	if(!clanguage::Display(0)) return -1;           //

	
	// Now, calls the update function
	if(!updater.DownloadUpdateChecker())
		// if not works in normal mode, try with secure mode
		if(!updater.DownloadUpdateChecker(secure)) return -3;

	// Now, checks if EvilUpdater have to update the software that... EvilUpdater updates? :P
	tempresult = updater.CheckUpdates();
	if(!tempresult) return -4;
	else if(tempresult == 1)
	{
		/// Func returns that has updates

		// Reloads console screen
		if(!cmisc::ReloadConsoleScreen()) return -2;

		// Shows in the screen:
		if(!clanguage::Display(0)) return -1;           //
		if(!clanguage::Display(1)) return -1;           //                               EVIL UPDATER
		if(!clanguage::Display(0)) return -1;           //
		if(!clanguage::Display(2,'1','E')) return -1;   //________________________________________________________________________________
		if(!clanguage::Display(0)) return -1;           //
		if(!clanguage::Display(0)) return -1;           //
		if(!clanguage::Display(102)) return -1;         //                      Downloading Updates... please wait...

		// Downloads the proper updates
		tempresult = updater.DownloadUpdates();
		if(!tempresult)
		{
			if(!updater.DownloadUpdates(secure)) return -5;
		}
		if(tempresult)
		{
			// If downloaded the updates sucessifully - securemode or not

			// Reloads console screen
			if(!cmisc::ReloadConsoleScreen()) return -2;
	
			// Shows in the screen:
			if(!clanguage::Display(0)) return -1;           //
			if(!clanguage::Display(1)) return -1;           //                               EVIL UPDATER
			if(!clanguage::Display(0)) return -1;           //
			if(!clanguage::Display(2,'1','E')) return -1;   //________________________________________________________________________________
			if(!clanguage::Display(0)) return -1;           //
			if(!clanguage::Display(0)) return -1;           //
			if(!clanguage::Display(103)) return -1;         //                           Updating... please wait...

			// Updates
			if(!updater.Update()) return -6;

		}
	}
	else if(tempresult == 2)
	{
		// Func returns that has no updates
		return 2; // Returns that has no updates
	}

	// Cleans everything
	if(!updater.CleanUpdaterDownloads()) return -7;
	
	
	// If everything returns ok up to here, returns 1 (success)
	return 1;
}