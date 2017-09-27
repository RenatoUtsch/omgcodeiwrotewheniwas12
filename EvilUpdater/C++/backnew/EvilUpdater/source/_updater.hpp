#pragma once
// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/_updater.h

// Updater class of the software - responsible for all update stages of EvilUpdater
// (a real important class ;D)

#include "__types.hpp"
#include "_downloader.hpp"

class Updater
{
	unsigned int revisionnumber; // Number of the revision of the program that EvilUpdater updates - transfer to a file later...

	Downloader Download; // Object for downloading
	HRETURN rhandler; // Handler for returning errors

	bool CheckUpdateType(); // For use of DownloadUpdates()

public:
	bool DownloadUpdateChecker(StartMode smode = normal);
	char CheckUpdates();
	bool DownloadUpdates(StartMode smode = normal);
	bool Update();
	bool CleanUpdaterDownloads();
};