// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - source\console\con_misc.cpp

// This file stores functions for general use of all classes
// in EvilUpdater CMD Version...

// Example: printwc...

#include "..\common\types.h"


/// coutc by LordEvil
//
// Works on C++. May work on C.
// You send your text and the color that you want.
// Prints that on the screen.
// Choose the color as the color prompt command (0-9 and A-F):
// Common use: coutc("text", background-color, text-color);
// Remember to create a coutwithcolor obj using:
// coutwithcolor coutcolor;
// then, use coutcolor.coutc("text", background-color, text-color);
class coutwithcolor
{
    void backcolor(char background);
    void forecolor(char foreground);

public:
    void coutc(char text[256], char backgroundcolor, char foregroundcolor, char defaultbackgroundR = BACKCOLOR, char defaultforeground = FORECOLOR);
};

void coutwithcolor::coutc(char text[256], char backgroundcolor, char foregroundcolor, char defaultbackground, char defaultforeground)
{
    // Set background color
    backcolor(backgroundcolor);

    // Set foreground color
    forecolor(foregroundcolor);

    // Cout's the text sent with the appropriate color
    cout << text;

    // Returns to normal color

    // Set background color
    backcolor(defaultbackground);

    // Set foreground color
    forecolor(defaultforeground);

    // Now, return...
    return;
}

void coutwithcolor::backcolor(char background)
{
    // Calculates handle
    HANDLE hOut;
    hOut = GetStdHandle(STD_OUTPUT_HANDLE);

    // Converting values in color
    switch(background)
    {
        case 0:
            // Black
            break;

        case 1:
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE);
            break;

        case 2:
            SetConsoleTextAttribute(hOut,BACKGROUND_GREEN);
            break;

        case 3:
            SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED);
            break;

        case 4:
            SetConsoleTextAttribute(hOut,BACKGROUND_RED);
            break;

        case 5:
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED);
            break;

        case 6:
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN);
            break;

        case 7:
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED);
            break;

        case 8:
            SetConsoleTextAttribute(hOut,BACKGROUND_INTENSITY);
            break;

        case 9:
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_INTENSITY);
            break;

        case 'A':
            SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY);
            break;

        case 'a':
            SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_INTENSITY);
            break;

        case 'B':
            SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'b':
            SetConsoleTextAttribute(hOut,BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'C':
            SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'c':
            SetConsoleTextAttribute(hOut,BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'D':
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'd':
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'E':
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY);
            break;

        case 'e':
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_INTENSITY);
            break;

        case 'F':
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        case 'f':
            SetConsoleTextAttribute(hOut,BACKGROUND_BLUE | BACKGROUND_GREEN | BACKGROUND_RED | BACKGROUND_INTENSITY);
            break;

        default:
            cout << "Error in couc!";
            return;
        }

        return;
}

void coutwithcolor::forecolor(char foreground)
{
    // Calculates handle
    HANDLE hOut;
    hOut = GetStdHandle(STD_OUTPUT_HANDLE);

    // Converting values in color
    switch(foreground)
        {
        case 0:
            // Black
            break;

        case 1:
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE);
            break;

        case 2:
            SetConsoleTextAttribute(hOut,FOREGROUND_GREEN);
            break;

        case 3:
            SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_RED);
            break;

            case 4:
            SetConsoleTextAttribute(hOut,FOREGROUND_RED);
            break;

        case 5:
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_RED);
            break;

        case 6:
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN);
            break;

        case 7:
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED);
            break;

        case 8:
            SetConsoleTextAttribute(hOut,FOREGROUND_INTENSITY);
            break;

        case 9:
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_INTENSITY);
            break;

        case 'A':
            SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_INTENSITY);
            break;

        case 'a':
            SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_INTENSITY);
            break;

        case 'B':
            SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'b':
            SetConsoleTextAttribute(hOut,FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'C':
            SetConsoleTextAttribute(hOut,FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'c':
            SetConsoleTextAttribute(hOut,FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'D':
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'd':
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'E':
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
            break;

        case 'e':
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_INTENSITY);
            break;

        case 'F':
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        case 'f':
            SetConsoleTextAttribute(hOut,FOREGROUND_BLUE | FOREGROUND_GREEN | FOREGROUND_RED | FOREGROUND_INTENSITY);
            break;

        default:
            cout << "Error in couc!";
            return;

        return;
    }
}
