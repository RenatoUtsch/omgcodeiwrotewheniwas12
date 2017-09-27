// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/downloader.cpp

// A file download subsystem. (.cpp file)

/// OBS: Needs to modify the system:
// * Correcting Bugs
// * Adding Support for FTP
// * Adding Support for HTTP/1.0
// * Checking Support for HTTP/1.1
// * Removing support (or commenting it) for resuming paused downloads
// * And more...
/// From Art of C++ - Thanks to Herbert Schildt

#include "_downloader.hpp"

// Download a file.
//
// Pass the URL of the file to url.
//
// To reload a file, pass true to reload.
//
// To specify an update function that is called after
// each buffer is read, pass a pointer to that
// function as the third parameter.  If no update
// function is desired, then let the third parameter
// default to null.
HRETURN Downloader::download(char *url, bool update)
{

    std::ofstream fout;           // output stream
    unsigned char buf[BUF_SIZE]; // input buffer
    unsigned long numrcved;  // number of bytes read
    unsigned long filelen;   // length of file on disk
    HINTERNET hIurl, hInet;  // Internet handles
    unsigned long contentlen;// length of content
    unsigned long len;       // length of contentlen
    unsigned long total = 0; // running total of bytes received
	unsigned long totaldl = 0; // For use of updatestatus
	unsigned long partdl = 0; // For use of updatestatus
    char header[80];         // holds Range header

    try
    {
        if(!issupported(url))
            throw URL_NOT_SUPPORTED; // Must be HTTP url.

        // Open the file specified by url.
        // The open stream will be returned
        // in fout.  If reload is true, then
        // any preexisting file will be truncated.
        // The length of any preexisting file (after
        // possible truncation) is returned.
        filelen = openfile(url, fout);

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
                if(update && numrcved > 0)
				{
					totaldl = contentlen+filelen;
					partdl = total+filelen;
                    updatestatus(partdl, totaldl, url);
				}

            } while(numrcved > 0);
            else
            {
                if(update)
                    updatestatus(filelen, filelen, url);
            }

    }
    catch(HRETURN errorhdl)
    {
		std::cout << "\n\n\n " << errorhdl << "butnot\n\n\n";
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

// Confirm if the url is supported
bool Downloader::issupported(char *url)
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


// Extract the filename from the URL.  Return false if
// the filename cannot be found.
bool Downloader::getfname(char *url, char *fname)
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

// Open the output file, initialize the output
// stream, and return the file's length.  If
// reload is true, first truncate any preexisting
// file.
unsigned long Downloader::openfile(char *url, std::ofstream &fout)
{
    char fname[MAX_FILENAME_SIZE];

    if(!getfname(url, fname))
        throw FILE_NAME_ERROR; // File name error.

	if(miscf::fexists(fname)) 
		if(std::remove(fname))
			throw FILE_EXISTS_AND_FAILED_DELETION; // The file already exists and EvilUpdater failed to delete.

    fout.open(fname, std::ios::binary | std::ios::out | std::ios::app | std::ios::ate);

    if(!fout)
        throw FAILED_OPEN_OUT_FILE; // Can't open output file.

    // Get current file length.
    return (unsigned long) fout.tellp();
}

void Downloader::updatestatus(unsigned long &part, unsigned long &total, char *url)
{
    char fname[MAX_FILENAME_SIZE];

    if(!getfname(url, fname))
        throw FILE_NAME_ERROR; // File name error.

	system("cls");
		std::cout <<  "Downloading: " << fname << " - " << part << "b / " << total << "b";
}

int Downloader::errorhandler(HRETURN ehandler)
{
	switch(ehandler)
	{
		case DL_OK:
			std::cout << "\n\n\nDownload Completed Successfully!\n";
			return 1;
			break;

		case URL_NOT_SUPPORTED:
			std::cout << "\n\n\nMust be HTTP url.\n";
			return -1;
			break;

		case FAILED_CONNECT:
			std::cout << "\n\n\nCan't connect.\n";
			return -2;
			break;

		case FAILED_OPEN_CONNECTION:
			std::cout << "\n\n\nCan't open connection.\n";
			return -3;
			break;

		case FAILED_OPEN_URL:
			std::cout << "\n\n\nCan't open url.\n";
			return -4;
			break;

		case FILE_NOT_FOUND:
			std::cout << "\n\n\nFile or content length not found (or file already exists).\n";
			return -5;
			break;

		case BAD_DOWNLOAD:
			std::cout << "\n\n\nError occurred during download.\n";
			return -6;
			break;

		case BAD_WRITE:
			std::cout << "\n\n\nError writing file.\n";
			return -7;
			break;

		case FILE_NAME_ERROR:
			std::cout << "\n\n\nFile name error.\n";
			return -8;
			break;

		case FAILED_OPEN_OUT_FILE:
			std::cout << "\n\n\nCan't open output file.\n";
			return -9;
			break;

		case FILE_EXISTS_AND_FAILED_DELETION:
			std::cout << "\n\n\nThe file already exists and EvilUpdater failed to delete.\n";
			return -10;
			break;

		default:
			std::cout << "\n\n\nHRETURN not recognized!\n";
			return -11;
			break;
	}

	std::cout << "\n\n\nHRETURN not recognized!\n";
	return -11;
}