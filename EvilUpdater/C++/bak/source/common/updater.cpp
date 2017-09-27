// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\common\updater.cpp

// This file handles the update of the software that EvilUpdater updates.

#include "types.h"

class Updater
{


public:
    bool update();
};

bool Updater::update()
{
    cout << "update";
    return true;
}
