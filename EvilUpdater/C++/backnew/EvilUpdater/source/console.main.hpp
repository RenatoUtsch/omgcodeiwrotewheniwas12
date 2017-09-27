#pragma once
// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/console.main.h

// Entry point of the console version of the software

#include "__types.hpp"
#include "console.misc.hpp"
#include "console.language.hpp"
#include "_updater.hpp"


class Console
{
	// Private

protected:
	// Protected

public:
	// Public
	char cStart(StartMode smode = normal); // Returns true if the consolemode worked correctly
};