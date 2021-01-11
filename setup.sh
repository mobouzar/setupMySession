#!/bin/sh

# Clear the workspace
Storage=$(df -h "$HOME" | grep "$HOME" | awk '{print($4)}' | tr 'i' 'B');

echo "\n\033[33m------------- Clear the workspace -----------\033[0m\n";
echo "\033[32m -- Available Storage before cleaning : $Storage \033[0m"
sleep 2

# Clear 42 caches
echo "\n\033[32m------- Clear 42Caches -------\033[0m\n";
sleep 1
/bin/rm -rf ~/Library/*.42* &>/dev/null
/bin/rm -rf ~/*.42* &>/dev/null
/bin/rm -rf ~/.zcompdump* &>/dev/null
/bin/rm -rf ~/.cocoapods.42_cache_bak* &>/dev/null

# Trash
echo "\033[32m------- Clear the Trash -------\033[0m\n";
/bin/rm -rf ~/.Trash/* &>/dev/null
/bin/rm -rf ~/Library/Caches/* &>/dev/null

#.DS_Store files
find ~/Desktop -name .DS_Store -depth -exec /bin/rm {} \; &>/dev/null

#tmp downloaded files with browsers
/bin/rm -rf ~/Library/Application\ Support/Chromium/Default/File\ System &>/dev/null
/bin/rm -rf ~/Library/Application\ Support/Chromium/Profile\ [0-9]/File\ System &>/dev/null
/bin/rm -rf ~/Library/Application\ Support/Google/Chrome/Default/File\ System &>/dev/null
/bin/rm -rf ~/Library/Application\ Support/Google/Chrome/Profile\ [0-9]/File\ System &>/dev/null

Storage=$(df -h "$HOME" | grep "$HOME" | awk '{print($4)}' | tr 'i' 'B')
if [ "$Storage" == "0BB" ];
then
	Storage="0B"
fi
echo "\033[32m -- Available Storage after cleaning : $Storage \033[0m"
sleep 3

# Check and install brew

echo "\n\033[33m----------- Downloading brew ... ----------\033[0m\n";
sleep 3
if [ ! -d "/goinfre/mobouzar/brew" ]
then
	curl -L https://github.com/Homebrew/brew/archive/1.9.0.tar.gz > /goinfre/mobouzar/brew1.9.0.tar.gz 2>/dev/null;
	tar -xvzf /goinfre/mobouzar/brew1.9.0.tar.gz &>/dev/null
	rm -rf /goinfre/mobouzar/brew1.9.0.tar.gz &>/dev/null
	mv ./brew-1.9.0 /goinfre/mobouzar/brew1 &>/dev/null
	ln -s /goinfre/mobouzar/brew1 /Users/mobouzar 2> /dev/null
	if [ -d "/Users/mobouzar/brew" ]
	then
		echo "\033[32m------- brew has been installed successfully -------\033[0m\n";
	else
		echo "\033[31m------- brew has NOT been installed :( -------\033[0m\n";
		exit 1;
	fi
else
	echo "\033[33m------- brew already installed -------\033[0m\n";
fi

# Make links for PKInstallSandboxManager mono vscode

echo "\n\033[33m------- Make links for PKInstallSandboxManager mono vscode to goinfre -------\033[0m\n";
sleep 1;

if [ ! -d "/goinfre/mobouzar/.PKInstallSandboxManager" ]
then
	mv .PKInstallSandboxManager /goinfre/mobouzar
	ln -s /goinfre/mobouzar/.PKInstallSandboxManager /Users/mobouzar 2> /dev/null
	echo "\033[32m------- PKInstallSandboxManager done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- PKInstallSandboxManager already linked -------\033[0m\n";
	sleep 1;
fi

if [ ! -d "/goinfre/mobouzar/.mono" ]
then
	mv .mono /goinfre/mobouzar
	ln -s /goinfre/mobouzar/.mono /Users/mobouzar 2> /dev/null
	echo "\033[32m------- mono done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- mono already linked -------\033[0m\n";
	sleep 1;
fi

if [ ! -d "/goinfre/mobouzar/.vscode" ]
then
	mv .vscode /goinfre/mobouzar
	ln -s /goinfre/mobouzar/.vscode /Users/mobouzar
	echo "\033[32m------- vscode done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- vscode already linked -------\033[0m\n";
	sleep 1;
fi