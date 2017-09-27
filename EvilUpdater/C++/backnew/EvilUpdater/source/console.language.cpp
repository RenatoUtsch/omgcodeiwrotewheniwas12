// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/console.language.cpp

// This class converts the string number codes into real strings, and within
// the language set in "__types.h" (.cpp file)

#include "console.language.hpp"

bool clanguage::Display(int number, char basecolor, char forecolor)
{
		switch(number)
		{
			case 0:
				cmisc::coutc("\n", basecolor, forecolor);
				goto endok;
				break;

			case 1:
				cmisc::coutc("                               EVIL UPDATER\n", basecolor, forecolor);
				goto endok;
				break;

			case 2:
				cmisc::coutc("컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴\n", basecolor, forecolor);
				goto endok;
				break;
		}

		// For English language
		#if LANGUAGEVERSION == 1
			switch(number)
			{
				case 101:
					cmisc::coutc("                     Searching for Updates... please wait...\n", basecolor, forecolor);
					break;

				case 102:
					cmisc::coutc("                      Downloading Updates... please wait...\n", basecolor, forecolor);
					break;

				case 103:
					cmisc::coutc("                           Updating... please wait...\n", basecolor, forecolor);
					break;

				default:
					return false;
					break;
			}
		#endif

		// For Portuguese language
		#if LANGUAGEVERSION == 2
			switch(number)
			{
				case 101:
					cmisc::coutc("           Procurando por atualiza寤es... aguarde...\n", basecolor, forecolor);
					break;

				case 102:
					cmisc::coutc("                      Baixando Atualiza寤es... aguarde...\n", basecolor, forecolor);
					break;

				case 103:
					cmisc::coutc("                            Atualizando... aguarde...\n", basecolor, forecolor);

				default:
					return false;
					break;
			}
		#endif

		// Everything ok...
		endok:
		return true;
}