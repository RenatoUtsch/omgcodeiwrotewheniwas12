// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/misc.cpp

// Misc functions for making EvilUpdater more beautiful *-* (.cpp file)

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "misc.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #code section ////
///////////////////////

bool misc::ReloadConsoleScreen(int backgroundc, int foregroundc)
{
	// First, convert characters to make 'color' command of cmd work
	char tempbackcolor;
	char temptextcolor;
	switch(backgroundc)
	{
		case 0:
			tempbackcolor = '0';
			break;

		case 1:
			tempbackcolor = '1';
			break;

		case 2:
			tempbackcolor = '2';
			break;

		case 3:
			tempbackcolor = '3';
			break;

		case 4:
			tempbackcolor = '4';
			break;

		case 5:
			tempbackcolor = '5';
			break;

		case 6:
			tempbackcolor = '6';
			break;

		case 7:
			tempbackcolor = '7';
			break;

		case 8:
			tempbackcolor = '8';
			break;

		case 9:
			tempbackcolor = '9';
			break;

		case 10:
			tempbackcolor = 'A';
			break;

		case 11:
			tempbackcolor = 'B';
			break;

		case 12:
			tempbackcolor = 'C';
			break;

		case 13:
			tempbackcolor = 'D';
			break;

		case 14:
			tempbackcolor = 'E';
			break;

		case 15:
			tempbackcolor = 'F';
			break;

		default:
			return false;
	}

	switch(foregroundc)
	{
		case 0:
			temptextcolor = '1';
			break;

		case 1:
			temptextcolor = '1';
			break;

		case 2:
			temptextcolor = '2';
			break;

		case 3:
			temptextcolor = '3';
			break;

		case 4:
			temptextcolor = '4';
			break;

		case 5:
			temptextcolor = '5';
			break;

		case 6:
			temptextcolor = '6';
			break;

		case 7:
			temptextcolor = '7';
			break;

		case 8:
			temptextcolor = '8';
			break;

		case 9:
			temptextcolor = '9';
			break;

		case 10:
			temptextcolor = 'A';
			break;

		case 11:
			temptextcolor = 'B';
			break;

		case 12:
			temptextcolor = 'C';
			break;

		case 13:
			temptextcolor = 'D';
			break;

		case 14:
			temptextcolor = 'E';
			break;

		case 15:
			temptextcolor = 'F';
			break;

		default:
			return false;
	}

	char colorm[9] = { 'c', 'o', 'l', 'o', 'r', ' ', tempbackcolor, temptextcolor};

    /// Starting Prompt Window
    SetConsoleTitle("EvilUpdater | A powerful updater for your softwares! | http://code.google.com/p/evilupdater"); // Title of the Screen
    system("mode con: cols=80 lines=25"); // Screen with 80 columns and 25 lines.
    system(colorm); // Basic color of the screen (Default: Background: Blue | Text: bright white).
    system("cls"); // Cleans the screen for preventing errors.

	return true;
}


bool misc::coutc(char msg[257], int backgroundc, int foregroundc, int dbackground, int dforeground)
{
	Basic_CoutC basic_coutc;

    // Set color
    if(!basic_coutc.colorchange(backgroundc, foregroundc)) std::cout << "error!";

    // Cout's the text sent with the appropriate color
    std::cout << msg;

    // Returns to normal color

    // Set color
    if(!basic_coutc.colorchange(dbackground, dforeground)) std::cout << "error!";

    // Now, return...
    return true;
}

bool misc::Basic_CoutC::colorchange(int cbackground, int cforeground)
{
   // Calculates handle
    HANDLE hOut;
    hOut = GetStdHandle(STD_OUTPUT_HANDLE);

    // Converting values in color
	switch(cbackground)
	{
	case 0:
		// if back is black
		switch(cforeground)
		  {
			case 0:
			  SetConsoleTextAttribute(hOut, FOREGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 1:
		// if back is blue
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 2:
		// if back is green
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_GREEN);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 3:
		// if back is cyan
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 4:
		// if back is RED
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_RED);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 5:
		// if back is purple
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 6:
		// if back is yellow
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 7:
		// if back is white
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 8:
		// if back is gray
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 9:
		// if back is bright blue
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 10:
		// if back is bright green
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 11:
		// if back is green
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 12:
		// if back is bright red
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 13:
		// if back is Lilac
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 14:
		// if back is bright yellow
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;

	case 15:
		// if back is bright white
		switch(cforeground)
		  {
			  case 0:
			  SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY);
			  break;
	
		    case 1:
		       SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE);
		      break;
	
			case 2:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN);
				break;

			case 3:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 4:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED);
				break;

			case 5:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED);
				break;

			case 6:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN);
				break;

			case 7:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
				break;

			case 8:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_INTENSITY);
				break;

			case 9:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_INTENSITY);
				break;

			case 10:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 11:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 12:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 13:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			case 14:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
				break;

			case 15:
				SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY | FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
				break;

			default:
				return false;
		}
		break;
	}

	// No problem ocurred...
	return true;
}