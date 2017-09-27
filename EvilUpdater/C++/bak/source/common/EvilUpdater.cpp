// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\common\updater.cpp

// This file handles the update of the software that EvilUpdater updates.

#include "types.h"
#include "..\console\consolemain.h"
// #include "..\gui\guimain.h" (when gui is implemented)

int main(int argc, char *argv[])
{
    #if BUILDVERSION == 1
        ConsoleM consolem;
        consolem.cMain();
    #endif

    #if BUILDVERSION == 2
		cout << "cheese"; // Only for testing
    #endif
}
