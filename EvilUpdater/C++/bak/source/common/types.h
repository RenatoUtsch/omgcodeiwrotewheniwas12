// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\common\types.h

// This file defines all standard headers and compiling conditionals - Set here your informations

// *************************************************************************************************************************** \\

#ifndef TYPES_H
#define TYPES_H

// Define if you will build CONSOLE or GUI versions

// Build version - You define here if you will build Console version
// or GUI version.
//
// Set:
// 1 = Console Version (default)
// 2 = GUI Version
#define  BUILDVERSION 1

// Language Type - You define here the language of the software
// 1 = English (default)
// 2 = Portuguese
// More languages will be added soon
const int LANGUAGEVERSION = 1;

// Colors of the screen - Look at color /? in CMD for color numbers
// Default is 1F ( Back: blue | Text: bright white)
const char BACKCOLOR = '1';
const char FORECOLOR = 'F';

// Basic includers (will need for both GUI and Console versions)
#include <iostream> // For all
#include <cstdio> // For all
#include <cstring> // For all
#include <fstream> // For downloader and updater
#include <windows.h>
using namespace std;

#if BUILDVERSION == 1
    // ...
#endif

#if BUILDVERSION == 2
// ...
#endif

#endif
