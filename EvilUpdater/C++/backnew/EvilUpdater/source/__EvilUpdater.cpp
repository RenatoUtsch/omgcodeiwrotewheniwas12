// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/__EvilUpdater.cpp

// Entry point of the software

#include "__types.hpp"
#include "console.main.hpp"


// if is console version to start
int main(int argc, char *argv[])
{
	Console consolemain;
	char tempreturn;
	tempreturn = consolemain.cStart();
	// Error handler
	switch(tempreturn)
	{
		case 0:
			// Error
			std::cout << "Error in consolemain::cStart()!\n\nExiting...";
			system("pause");
			return 1;
			break;

		case -1:
			// Error by not displaying test
			std::cout << "Error in clanguage::Display()!\n\nExiting...";
			system("pause");
			return -1;
			break;

		case -2:
			// Error by not reloading console screen
			std::cout << "Error in cmisc::ReloadConsoleScreen()!\n\nExiting...";
			system("pause");
			return -2;
			break;

		case -3:
			// Error by not downloading update checker
			std::cout << "Error in updater.DownloadUpdateChecker()!\n\nExiting...";
			system("pause");
			return -3;
			break;

		case -4:
			// Error by not checking updates
			std::cout << "Error in updater.CheckUpdates()!\n\nExiting...";
			system("pause");
			return -4;
			break;

		case -5:
			// Failed to download updates
			std::cout << "Error in updater.DownloadUpdates()!\n\nExiting...";
			system("pause");
			return -5;
			break;

		case -6:
			// Failed to update
			std::cout << "Error in updater.Update()!\n\nExiting...";
			system("pause");
			return -6;
			break;

		case -7:
			// Failed to clean downloads
			std::cout << "Error in updater.CleanUpdaterDownloads()!\n\nExiting...";
			system("pause");
			return -7;
			break;

		case 1:
			// Everything ocurred ok
			std::cout << "Everything ok...";
			break;

		default:
			// Error...?
			std::cout << "Undefined Error!\n\nExiting...";
			system("pause");
			return 2;
			break;
	}

	// exiting...
	return 0;
}