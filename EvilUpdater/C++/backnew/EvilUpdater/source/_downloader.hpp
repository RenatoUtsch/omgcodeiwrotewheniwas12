#pragma once
// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/downloader.h

// A file download subsystem.

#include "__types.hpp"
#include "_misc.hpp"

/// Global Variables
const int MAX_ERRMSG_SIZE = 80;
const int MAX_FILENAME_SIZE = 512;
const int BUF_SIZE = 1024;

enum HRETURN {DL_OK, URL_NOT_SUPPORTED, FAILED_CONNECT, FAILED_OPEN_CONNECTION, FAILED_OPEN_URL, FILE_NOT_FOUND,
	BAD_DOWNLOAD, BAD_WRITE, FILE_NAME_ERROR, FAILED_OPEN_OUT_FILE, FILE_EXISTS_AND_FAILED_DELETION };

class Downloader
{
	int errorhdl; // Error handler

	bool issupported(char *url); 
    bool getfname(char *url, char *fname);
    unsigned long openfile(char *url, std::ofstream &fout);
	void updatestatus(unsigned long &part, unsigned long &total, char *url);

    public:
    HRETURN download(char *url, bool update);
	int errorhandler(HRETURN ehandler);
};
