// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\console\consolemain.cpp

#include "..\common\types.h"
#include "..\common\updater.h"
#include "con_languages.h"

class ConsoleM
{
	void ReloadConsoleScreen(char backgroundc = BACKCOLOR, char foregroundc = FORECOLOR);

public:
	int cMain();
};

int ConsoleM::cMain()
{
	// Starts Console Screen
	ReloadConsoleScreen();

	// Loads Language
	cLanguage language;

	language.Display(0); // Couts a blank line
	language.Display(1); // Couts "EvilUpdater"
	language.Display(0); // Couts a blank line
	language.Display(2); // Couts a ======== line
	language.Display(0); // Couts a blank line
	language.Display(101); // Couts a "Searching for updates line"
	language.Display(0); // Couts a blank line
	system("pause");

	// Calls updater


    /// End of the Function
	return 0;
}

// Reloads console window
void ConsoleM::ReloadConsoleScreen(char backgroundc, char foregroundc)
{
	char colorjoin[9] = "color ";
	colorjoin[7] = backgroundc;
	colorjoin[8] = foregroundc;

    /// Starting Prompt Window
    SetConsoleTitle("EvilUpdater | A powerful updater for your softwares! | http://code.google.com/p/evilupdater"); // Title of the Screen
    system("mode con: cols=80 lines=25"); // Screen with 80 columns and 25 lines.
    system(colorjoin); // Basic color of the screen (Background: Blue | Text: bright white).
    system("cls"); // Cleans the screen for preventing errors.

	return;
}
