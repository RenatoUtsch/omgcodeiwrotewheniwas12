// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/evu-console.cpp

// Entry point of the application

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "types.hpp"
#include "con-main.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// code section ////
//////////////////////

// main() - Start of the software
int main(int argc, char *argv[])
{
	// For use of CreateProcess()
	STARTUPINFO sinfo;
	PROCESS_INFORMATION pinfo;
	memset(&sinfo,0,sizeof(STARTUPINFO));
	memset(&pinfo,0,sizeof(PROCESS_INFORMATION));
	sinfo.cb = sizeof(STARTUPINFO);
	// end
	
	Console console; // Object of console clas (con-main.hpp).
	HCONSOLE hconsole; // Instance of HCONSOLE enumeration (con-main.hpp), to get cMain errors.

	hconsole = console.cMain(true);

	if(DEBUG_ON == 2)
		system("pause");

	if(AFTER_ERROR)
		if(hconsole) // cMain returns 0 (the first in HCONSOLE enum) if everything was successful.
			return -1;

	if(!CreateProcess(EXECUTABLE,0,0,0,0,0,0,0,&sinfo,&pinfo))
	   language::ShowError(3); // In case of error


	return 0;
}