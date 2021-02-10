#!/bin/sh

# Clean the workspace
Storage=$(df -h "$HOME" | grep "$HOME" | awk '{print($4)}' | tr 'i' 'B');

echo "\n\033[33m------------- Clean the workspace -----------\033[0m\n";
echo "\033[32m -- Available Storage before cleaning : $Storage \033[0m";
sleep 2;

# Clean 42 caches
echo "\n\033[32m------- Clean 42Caches -------\033[0m\n";
sleep 1;
rm -rf ~/Library/*.42* &>/dev/null;
rm -rf ~/*.42* &>/dev/null;
rm -rf ~/.zcompdump* &>/dev/null;
rm -rf ~/.cocoapods.42_cache_bak* &>/dev/null;

# Trash
echo "\033[32m------- Clean the Trash -------\033[0m\n";
rm -rf ~/.Trash/* &>/dev/null;
rm -rf ~/Library/Caches/* &>/dev/null;

#.DS_Store files
rm {} \; &>/dev/null;

#tmp downloaded files with browsers
rm -rf ~/Library/Application\ Support/Chromium/Default/File\ System &>/dev/null;
rm -rf ~/Library/Application\ Support/Chromium/Profile\ [0-9]/File\ System &>/dev/null;
rm -rf ~/Library/Application\ Support/Google/Chrome/Default/File\ System &>/dev/null;
rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/File\ System &>/dev/null;

Storage=$(df -h "$HOME" | grep "$HOME" | awk '{print($4)}' | tr 'i' 'B');
if [ "$Storage" == "0BB" ];
then
	Storage="0B";
fi
echo "\033[32m -- Available Storage after cleaning : $Storage \033[0m";