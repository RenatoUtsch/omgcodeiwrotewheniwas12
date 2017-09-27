// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\console\con_languages.cpp


// Here are stored the language variables of the software for multi-language support.

#include "..\common\types.h"
#include "con_misc.h"

class cLanguage
{
public:
	bool Display(int number, char basecolor = BACKCOLOR, char forecolor = FORECOLOR);
};

bool cLanguage::Display(int number, char basecolor, char forecolor)
	{
		coutwithcolor coutcolor;
		// Default (works in all languages)
		switch(number)
		{
			case 0:
				coutcolor.coutc ("\n", basecolor, forecolor);
				break;

			case 1:
				coutcolor.coutc ("                               EVIL UPDATER\n", basecolor, forecolor);
				break;

			case 2:
				coutcolor.coutc ("컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴\n", basecolor, forecolor);
				break;
		}

		// For English language
		#if LANGUAGEVERSION == 1
			switch(numbertext)
			{
				case 101:
					coutcolor.coutc ("                     Searching for Updates... please wait...", basecolor, forecolor);
					break;

				default:
					return false;
					break;
			}
		#endif

		// For Portuguese language
		#if LANGUAGEVERSION == 2
			switch(numbertext)
			{
				case 101:
					coutcolor.coutc ("           Procurando por atualiza寤es... aguarde...", basecolor, forecolor);
					break;

				default:
					return false;
					break;
			}
		#endif

		return true;
	}
