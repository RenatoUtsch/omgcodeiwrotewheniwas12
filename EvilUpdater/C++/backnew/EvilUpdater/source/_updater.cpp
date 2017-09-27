// Copyright (c) LordEvil - Licensed under GNU GPL
// For more information, see License.txt in the \wiki folder

/// EvilUpdater - EvilUpdater/EvilUpdater/source/_updater.cpp

#include "_updater.hpp"

bool Updater::CheckUpdateType()
{
	return true;
}



bool Updater::DownloadUpdateChecker(StartMode smode)
{
	char urltemp[512] = ""; // Temp for storaging url's
	strcat(urltemp, PATCH_FOLDER);
	strcat(urltemp, PATCH_LIST);

	rhandler = Download.download(urltemp, true);
	if(!rhandler == DL_OK)
	{
		Download.errorhandler(rhandler);
		return false;
	}

	return true;
}
char Updater::CheckUpdates()
{
	return true;
}
bool Updater::DownloadUpdates(StartMode smode)
{
	return true;
}
bool Updater::Update()
{
	return true;
}
bool Updater::CleanUpdaterDownloads()
{
	return true;
}

/*
 * Will check md5 from the site
 * and compare with the version in the computer...
 * If is different, download the new from the site...
 * If is the same, closes...
*/