// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/languages.cpp

// Select strings between languages (.cpp file)

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "languages.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #code section ////
///////////////////////

bool language::Display(int number, char basecolor, char forecolor)
{
	// Common between all languages
	switch(number)
	{
		case 0:
			if(!misc::coutc("\n", basecolor, forecolor)) return false;
			break;

		case 1:
			if(!misc::coutc("                               EVIL UPDATER\n", basecolor, forecolor)) return false;
			break;

		case 2:
			if(!misc::coutc("ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ\n", basecolor, forecolor)) return false;
			break;
	}

	// For English language
	if(LANGUAGE_VERSION == 1)
	{
		switch(number)
		{
			case 101:
				if(!misc::coutc("                     Searching for Updates... please wait...\n", basecolor, forecolor)) return false;
				break;

			case 102:
				if(!misc::coutc("                      Downloading Updates... please wait...\n", basecolor, forecolor)) return false;
				break;

			case 103:
				if(!misc::coutc("                           Updating... please wait...\n", basecolor, forecolor)) return false;
				break;


			// For errors
			case 1001:
				if(!misc::coutc("                                Download Problem\n", basecolor, forecolor)) return false;
				break;

			case 1002:
				if(!misc::coutc("                          Could not check for updates.\n", basecolor, forecolor)) return false;
				break;

			case 1003:
				if(!misc::coutc("                                General Problem\n", basecolor, forecolor)) return false;
				break;

			case 1004:
				if(!misc::coutc("                          Could not start the software.\n", basecolor, forecolor)) return false;
				break;


			default:
				if(number < 0 && number > 2)
					return false;
				break;
		}
	}
	else
	// For Portuguese language
	if(LANGUAGE_VERSION == 2)
	{
		switch(number)
		{
			case 101:
				if(!misc::coutc("           Procurando por atualiza‡äes... aguarde...\n", basecolor, forecolor)) return false;
				break;

			case 102:
				if(!misc::coutc("                      Baixando Atualiza‡äes... aguarde...\n", basecolor, forecolor)) return false;
				break;

			case 103:
				if(!misc::coutc("                            Atualizando... aguarde...\n", basecolor, forecolor)) return false;


			// For errors
			case 1001:
				if(!misc::coutc("                              Problema no Download\n", basecolor, forecolor)) return false;
				break;

			case 1002:
				if(!misc::coutc("                NÆo foi poss¡vel checar se haviam atualiza‡äes...\n", basecolor, forecolor)) return false;
				break;

			case 1003:
				if(!misc::coutc("                                 Problema Geral\n", basecolor, forecolor)) return false;
				break;

			case 1004:
				if(!misc::coutc("                      NÆo foi poss¡vel iniciar o programa.\n", basecolor, forecolor)) return false;
				break;

			default:
				if(number < 0 && number > 2)
					return false;
				break;
		}
	}

		// Everything ok...
		return true;


	return true;
}

bool language::ShowError(int errornumber, char baseerrorcolor, char foreerrorcolor)
{
	switch(errornumber)
	{
		case 1:
			if(!misc::ReloadConsoleScreen(baseerrorcolor, foreerrorcolor)) return false;
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1, baseerrorcolor, foreerrorcolor)) return false;           //                               EVIL UPDATER
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(2,baseerrorcolor, foreerrorcolor)) return false;            //________________________________________________________________________________
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1001, baseerrorcolor, foreerrorcolor)) return false;        //                                Download Problem
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1002, baseerrorcolor, foreerrorcolor)) return false;        //                          Could not check for updates.
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			system("pause");
			break;

		case 2:
			if(!misc::ReloadConsoleScreen(baseerrorcolor, foreerrorcolor)) return false;
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1, baseerrorcolor, foreerrorcolor)) return false;           //                               EVIL UPDATER
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(2,baseerrorcolor, foreerrorcolor)) return false;            //________________________________________________________________________________
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1003, baseerrorcolor, foreerrorcolor)) return false;        //                                General Problem
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			system("pause");
			break;

		case 3:
			if(!misc::ReloadConsoleScreen(baseerrorcolor, foreerrorcolor)) return false;
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1, baseerrorcolor, foreerrorcolor)) return false;           //                               EVIL UPDATER
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(2,baseerrorcolor, foreerrorcolor)) return false;            //________________________________________________________________________________
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1003, baseerrorcolor, foreerrorcolor)) return false;        //                                General Problem
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			if(!language::Display(1004, baseerrorcolor, foreerrorcolor)) return false;        //                          Could not start the software.
			if(!language::Display(0, baseerrorcolor, foreerrorcolor)) return false;           //
			system("pause");
			break;

		default:
			return false;
	}

	// Error showed...
	return true;
}