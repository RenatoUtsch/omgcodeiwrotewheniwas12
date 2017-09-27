#pragma once

// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/types.hpp

// Basic definitions are listed here and variables to set before compiling EvilUpdater,
// like the url to download updates are set here too


// ************************************* \\ BUILD // *************************************
// Section for customizing build:
//
//

// *** DEBUG ***
// Set 2 if you want to enable debugging.
// Set 1 if you want to disable debugging but show the ERROR message (default)
// Set 0 if you want to completely disable debug (won't show the message "ERROR! TERMINATING...")
const int DEBUG_ON = 1;

// *** LANGUAGE ***
// Set here if you want to change the language of the software.
// ENGLISH = 1 (default)
// PORTUGUÊS (BR) = 2
const int LANGUAGE_VERSION = 1;

// *** AFTER ERRORS ***
// Set 0 if you want to start the software that EvilUpdater ... err ... updates
// or set 1 if you want to close the application if an error is showed (default)
const int AFTER_ERROR = 1;



// ************************************* \\ UPDATES // *************************************
// Section for configuring the updates, like the url
// where the updates are, the file list name, etc.
//
// OBS: PUT ALL INFORMATION BETWEEN "\" AND \""
// Example: NOT PATCH_LIST[257] = "list/patchlist.txt";
// BUT PATCH_LIST[257] = "\"list/patchlist.txt\"";
//
//

// Folder of your program inside your site
// Do not forget to add the final "/" after the link.
// ex: NOT "http://yoursite.com/downloads/yourprogram"
// BUT "http://yoursite.com/downloads/yourprogram/"
//
const char PATCH_URL[257] = "\"http://yoursite.com/downloads/yourprogram/\"";

// Link of patch list, where you specify the updates
// ex: If your url is "http://yoursite.com/downloads/yourprogram/"
// and you set in PATCH_LIST that patch list url is "list/patchlist.txt",
// so it is in "http://yoursite.com/downloads/yourprogram/list/patchlist.txt".
//
const char PATCH_LIST[257] = "\"list/patchlist.txt\"";

// Folder where your updates are located.
// ex: If your url is "http://yoursite.com/downloads/yourprogram/"
// and you set in UP_FOLDER that the updates are located in "updates/" (do not forget
// the final / ), so the updates of your program are in 
// "http://yoursite.com/downloads/yourprogram/updates/"
//
const char UP_FOLDER[257] = "\"updates/\"";

// Name of the file that EvilUpdater will start after updating
// 
//
const char EXECUTABLE[257] = "\"yourprogram.exe\"";


// ************************************* \\ MISC // *************************************
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

// Now you set the screen if is shown an error
// Default:  4, 7 (back red, text white)
const int BACKERRORCOLOR = 4;
const int TEXTERRORCOLOR = 7;



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
// For including all headers listed below, only include the file "types.hpp".
// "using namespace std;" is not used in this software. So, you have to use "std::"
// for all standard functions. I use this for preventing conflicts.
//
//



// ************************************* \\ DO NOT MODIFY BELOW // *************************************
// Do not modify below unless you know what you are doing and understood all that was said
// in "INSTRUCTIONS FOR MODIFYING SOURCE" section of this file.
//
//

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

// Include all standard headers for console version here.
#include <iostream>
#include <cstdio>
#include <cstring>
#include <Windows.h>
// using namespace std; /* Do not use this... */


////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// adv define section ////
////////////////////////////
// I suggest to not modify here, unless you are debugging something
// or this section is generating a bug.
//
// The informations listed here are vital, and desconfiguration
// may cause a serious bugs.
//
//

/// ********** For use of con-main **********
enum HCONSOLE // The return value of cMain
{
	EVERYTHING_OK, ERROR_RELOAD_SCREEN, ERROR_LANGUAGE 
};


/// ********** For use of the downloader **********
const int MAX_FILENAME_SIZE = 512; // The max size of the name of the file that will be downloaded
const int BUF_SIZE = 1024;         // The max size of the buffer

enum HDOWNLOAD // The return value of the downloader
{
	DL_OK, URL_NOT_SUPPORTED, FAILED_CONNECT, FAILED_OPEN_CONNECTION, FAILED_OPEN_URL, FILE_NOT_FOUND,
	BAD_DOWNLOAD, BAD_WRITE, FILE_NAME_ERROR, FAILED_OPEN_OUT_FILE, FILE_EXISTS_AND_FAILED_DELETION 
};

/// ********** For use of the updater **********
enum HUPDATE // The return value of the updater
{
	UPD_OK
};