// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/_misc.cpp

// Misc functions for common files (.cpp file)

#include "_misc.hpp"

bool miscf::fexists(const char *filename)
{
  std::ifstream ifile(filename);
  return ifile;
}