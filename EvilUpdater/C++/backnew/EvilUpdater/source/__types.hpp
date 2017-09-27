#pragma once


// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/__types.h

// Basic definitions are listed here and variables to set before compiling EvilUpdater,
// like the url to download updates are set here too



// ************************************* \\ BUILD // *************************************
// Section for customizing build:
//
//

// *** LANGUAGE ***
// Set here if you want to change the language of the software.
// ENGLISH = 1 (default)
// PORTUGUÊS (BR) = 2
#define LANGUAGEVERSION 1



// ************************************* \\ UPDATES // *************************************
// Section for configuring the updates, like the url
// where the updates are, the file list name, etc.
//
//

// Folder of your program inside your site
// Do not forget to add the final "/" after the link.
// ex: NOT "http://yoursite.com/downloads/yourprogram"
// BUT "http://yoursite.com/downloads/yourprogram/"
//
const char PATCH_FOLDER[257] = "http://yoursite.com/downloads/yourprogram/";

// Link of patch list, where you specify the updates
// ex: If your url is "http://yoursite.com/downloads/yourprogram/"
// and you set in PATCH_LIST that patch list url is "list/patchlist.txt",
// so it is in "http://yoursite.com/downloads/yourprogram/list/patchlist.txt".
//
const char PATCH_LIST[257] = "list/patchlist.txt";

// Folder where your updates are located.
// ex: If your url is "http://yoursite.com/downloads/yourprogram/"
// and you set in UP_FOLDER that the updates are located in "updates/" (do not forget
// the final / ), so the updates of your program are in 
// "http://yoursite.com/downloads/yourprogram/updates/"
//
const char UP_FOLDER[257] = "updates/";

// Name of the file that EvilUpdater will start after updating
//
const char EXECUTABLE[257] = "yourprogram.exe";


// ************************************* \\ CONSOLE VERSION // *************************************
// Section for configuring small things only for console version, 
// as the color of the screen.
//
//

// *** COLOR ***
// Set here if you want to change the color of the screen.
// Colors:
// 0 - Black         8 - Gray
// 1 - Blue          9 - Bright blue
// 2 - Green         10 - Bright green
// 3 - Cyan          11 - Bright cyan
// 4 - Red           12 - Bright red
// 5 - Purple        13 - Lilac
// 6 - Yellow        14 - Bright yellow
// 7 - White         15 - Bright white
//
// Set in BACKCOLOR the color of the background.
// Set in TEXTCOLOR the color of the text.
//
// Remember that you are only setting the default and
// the color that will be shown on the start of the software.
// You can use coutc from console.misc to print text with
// other colors.
//
// The default from console is 1,15 (blue,bright white).
// TEXTCOLOR black(0) is buggy when you use BACKCOLOR black(0),
// so, don't use it! :)
//
//
const int BACKCOLOR = 1;
const int TEXTCOLOR = 15;



// ************************************* \\ GUI VERSION // *************************************
// Section for configuring small things only for GUI version.
// As it is not implemented yet, this section doesn't have anything.
//
//



// ************************************* \\ INSTRUCTIONS FOR MODIFYING SOURCE // *************************************
// Basic instructions for modifying source.
// We don't suggest to modify the source if you don't understand the text below.
//
// All standard headers (that comes between < and >) are listed here.
// For console version, list headers on the #if BUILDVERSION == 1 place.
// For GUI version, list headers on the #if BUILDVERSION == 2 place.
//
// All other headers (that comes between " and ") are listed in the proper file.
// Do not list them here.
// For adding these headers, add in the .h files of the classes, not in the .cpp files,
// that then would have to include only his .h file.
//
// For including all headers listed below, only include the file "types.h".
// If you want to use "using namespace std;", uncomment the line in the same place of the
// standard headers. By default, all standard functions are called with std::
// for preventing conflicts.
//
//



// ************************************* \\ DO NOT MODIFY BELOW // *************************************
// Do not modify below unless you know what you are doing and understood all that was said
// in "INSTRUCTIONS FOR MODIFYING SOURCE" section of this file.
//
//


// Include all standard headers for console version here.
#include <iostream>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <Windows.h>
#include <WinInet.h>
// using namespace std; /* Do not use this... */

// Startmode for starting some functions
enum StartMode { normal, secure, secureminimal, minimal };