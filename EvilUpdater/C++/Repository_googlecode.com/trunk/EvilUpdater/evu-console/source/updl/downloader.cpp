// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the /wiki folder

/// EvilUpdater - EvilUpdater/evu-console/source/updl/downloader.cpp

// File Download SubSystem using WinInet (.cpp file)

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #include section ////
//////////////////////////

#include "downloader.hpp"

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//// #code section ////
///////////////////////

bool Downloader::download(char *url, bool UseErrorHandler, bool UseStatusUpdater)
{
	bool flags = UseStatusUpdater;
	HDOWNLOAD hdownload;

	hdownload = Basic_Download(url, flags);
	if(UseStatusUpdater) ErrorHandler(hdownload);

	if(hdownload) return false; // If basic_download returned an error
	return true;
}

void Downloader::ErrorHandler(HDOWNLOAD error)
{
	if(DEBUG_ON == 2)
	{
		switch(error)
		{
			case DL_OK:
				break;

			case URL_NOT_SUPPORTED:
				std::cout << "EvilUpdater?Download?Basic_Download?: MUST BE A SUPPORTED URL TYPE! TERMINATING...";
				break;

			case FAILED_CONNECT:
				std::cout << "EvilUpdater?Download?Basic_Download?: FAILED TO TEST CONNECTION! TERMINATING...";
				break;

			case FAILED_OPEN_CONNECTION:
				std::cout << "EvilUpdater?Download?Basic_Download?: FAILED TO OPEN CONNECTION! TERMINATING...";
				break;

			case FAILED_OPEN_URL:
				std::cout << "EvilUpdater?Download?Basic_Download?: FAILED TO OPEN URL! TERMINATING...";
				break;

			case FILE_NOT_FOUND:
				std::cout << "EvilUpdater?Download?Basic_Download?: DOWNLOAD FILE NOT FOUND IN SERVER! TERMINATING...";
				break;

			case BAD_DOWNLOAD:
				std::cout << "EvilUpdater?Download?Basic_Download?: ERROR DURING DOWNLOAD! TERMINATING...";
				break;

			case BAD_WRITE:
				std::cout << "EvilUpdater?Download?Basic_Download?: ERROR DURING FILE WRITE (IN DOWNLOAD)! TERMINATING...";
				break;

			case FILE_NAME_ERROR:
				std::cout << "EvilUpdater?Download?OpenFile?: FILE NAME ERROR! TERMINATING...";
				break;

			case FAILED_OPEN_OUT_FILE:
				std::cout << "EvilUpdater?Download?OpenFile?: FAILED TO OPEN OUTPUT FILE! TERMINATING...";
				break;

			case FILE_EXISTS_AND_FAILED_DELETION:
				std::cout << "EvilUpdater?Download?OpenFile?: FILE EXISTS AND FAILED DELETION! TERMINATING...";
				break;
		}
	}
	else if (DEBUG_ON == 1)
	{
		if(error)
		{
			if(!language::ShowError(1)) std::cout << "EvilUpdater?Download?Languages?ErrorShow?: ERROR WHEN SHOWING ERROR! TERMINATING...";
			system("pause");
		}
	}
}



/// BASIC_DOWNLOADER




HDOWNLOAD Downloader::Basic_Download(char *url, bool useupdater)
{

    std::ofstream fout;           // output stream
    unsigned char buf[BUF_SIZE]; // input buffer
    unsigned long numrcved;  // number of bytes read
    unsigned long filelen;   // length of file on disk
    HINTERNET hIurl, hInet;  // Internet handles
    unsigned long contentlen;// length of content
    unsigned long len;       // length of contentlen
    unsigned long total = 0; // running total of bytes received
    char header[80];         // holds Range header
	char *filename = "";     // For use of StatusUpdater
	GetFileName(url, filename); // For use of StatusUpdater

    try
    {
        if(!IsSupported(url))
            throw URL_NOT_SUPPORTED; // Must be HTTP url.

        // Open the file specified by url.
        // The open stream will be returned
        // in fout.  If reload is true, then
        // any preexisting file will be truncated.
        // The length of any preexisting file (after
        // possible truncation) is returned.
        filelen = OpenFile(url, fout);

        // See if Internet connection available.
        if(InternetAttemptConnect(0) != ERROR_SUCCESS)
            throw FAILED_CONNECT; // Can't connect.

        // Open Internet connection.
        hInet = InternetOpen("downloader", INTERNET_OPEN_TYPE_DIRECT, NULL, NULL,  0);

        if(hInet == NULL)
            throw FAILED_OPEN_CONNECTION; // Can't open connection.

        // Construct header requesting range of data.
        sprintf(header, "Range:bytes=%d-", filelen);

        // Open the URL and request range.
        hIurl = InternetOpenUrl(hInet, url, header, -1, INTERNET_FLAG_NO_CACHE_WRITE, 0);

        if(hIurl == NULL) throw FAILED_OPEN_URL; // Can't open url.

        // Get content length.
        len = sizeof contentlen;
        if(!HttpQueryInfo(hIurl, HTTP_QUERY_CONTENT_LENGTH | HTTP_QUERY_FLAG_NUMBER, &contentlen, &len, NULL))
            throw FILE_NOT_FOUND; // File or content length not found.

        // If existing file (if any) is not complete,
        // then finish downloading.
        if(filelen != contentlen && contentlen)
            do {
                // Read a buffer of info.
                if(!InternetReadFile(hIurl, &buf, BUF_SIZE, &numrcved))
                    throw BAD_DOWNLOAD; // Error occurred during download.

                // Write buffer to disk.
                fout.write((const char *) buf, numrcved);
                if(!fout.good())
                    throw BAD_WRITE; // Error writing file.

                total += numrcved; // update running total

                // Call update function, if specified.
                if(useupdater && numrcved > 0)
				{
                    StatusUpdater(total+filelen, contentlen+filelen, filename);
				}

            } while(numrcved > 0);
            else
            {
                if(useupdater)
                    StatusUpdater(filelen, filelen, filename);
            }

    }
    catch(HDOWNLOAD errorhdl)
    {
        fout.close();
        InternetCloseHandle(hIurl);
        InternetCloseHandle(hInet);

        return errorhdl;
    }

    fout.close();
    InternetCloseHandle(hIurl);
    InternetCloseHandle(hInet);

    return DL_OK;
}

bool Downloader::IsSupported(char *url)
{
    char str[6] = "";

    // Get first four characters from URL.
    strncpy(str, url, 5);

    // Convert to lowercase
    for(char *p=str; *p; p++) *p = tolower(*p);

	if(strcmp("http:", str))
		if(strcmp("https", str))
			if(strcmp("ftp::",str))
				return false;

    return true;
}

bool Downloader::GetFileName(char *url, char *fname)
{
    // Find last /.
    char *p = strrchr(url, '/');

    // Copy filename after the last /.
    if(p && (strlen(p) < MAX_FILENAME_SIZE))
    {
        p++;
        strcpy(fname, p);
        return true;
    }
    else
        return false;
}

unsigned long Downloader::OpenFile(char *url, std::ofstream &fout)
{
    char fname[MAX_FILENAME_SIZE];
    if(!GetFileName(url, fname))
        throw FILE_NAME_ERROR; // File name error.

    fout.open(fname, std::ios::binary | std::ios::out | std::ios::app | std::ios::ate);

    if(!fout)
        throw FAILED_OPEN_OUT_FILE; // Can't open output file.

    // Get current file length.
    return (unsigned long) fout.tellp();
}

void Downloader::StatusUpdater(unsigned long part, unsigned long total, char *filename)
{
  int val = (int) ((double) part/total*100);
  std::cout << filename << ": " << part << "b / " << total << "b ( " << val << "% )" << std::endl;
}
