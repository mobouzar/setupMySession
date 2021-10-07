#!/bin/sh

export SESSION=mobouzar

if [ ! -d "/goinfre/$SESSION/AddressBook" ]
then
	mkdir "/goinfre/$SESSION/AddressBook";
fi
if [ ! -d "/goinfre/$SESSION/AndroidStudio4.0" ]
then
	mkdir "/goinfre/$SESSION/AndroidStudio4.0";
fi
if [ ! -d "/goinfre/$SESSION/Atom" ]
then
	mkdir "/goinfre/$SESSION/Atom";
fi
if [ ! -d "/goinfre/$SESSION/CallHistoryDB" ]
then
	mkdir "/goinfre/$SESSION/CallHistoryDB";
fi
if [ ! -d "/goinfre/$SESSION/CallHistoryTransactions" ]
then
	mkdir "/goinfre/$SESSION/CallHistoryTransactions";
fi
if [ ! -d "/goinfre/$SESSION/CloudDocs" ]
then
	mkdir "/goinfre/$SESSION/CloudDocs";
fi
if [ ! -d "/goinfre/$SESSION/Code" ]
then
	mkdir "/goinfre/$SESSION/Code";
fi
if [ ! -d "/goinfre/$SESSION/CoreParsec" ]
then
	mkdir "/goinfre/$SESSION/CoreParsec";
fi
if [ ! -d "/goinfre/$SESSION/CrashReporter" ]
then
	mkdir "/goinfre/$SESSION/CrashReporter";
fi
if [ ! -d "/goinfre/$SESSION/DiskImages" ]
then
	mkdir "/goinfre/$SESSION/DiskImages";
fi
if [ ! -d "/goinfre/$SESSION/Dock" ]
then
	mkdir "/goinfre/$SESSION/Dock";
fi
if [ ! -d "/goinfre/$SESSION/Google" ]
then
	mkdir "/goinfre/$SESSION/Google";
fi
if [ ! -d "/goinfre/$SESSION/JREInstaller" ]
then
	mkdir "/goinfre/$SESSION/JREInstaller";
fi
if [ ! -d "/goinfre/$SESSION/Java" ]
then
	mkdir "/goinfre/$SESSION/Java";
fi
if [ ! -d "/goinfre/$SESSION/Knowledge" ]
then
	mkdir "/goinfre/$SESSION/Knowledge";
fi
if [ ! -d "/goinfre/$SESSION/Microsoft" ]
then
	mkdir "/goinfre/$SESSION/Microsoft";
fi
if [ ! -d "/goinfre/$SESSION/Microsoft AutoUpdate" ]
then
	mkdir "/goinfre/$SESSION/Microsoft AutoUpdate";
fi
if [ ! -d "/goinfre/$SESSION/Microsoft Update Assistant" ]
then
	mkdir "/goinfre/$SESSION/Microsoft Update Assistant";
fi
if [ ! -d "/goinfre/$SESSION/Microsoft Visual Studio" ]
then
	mkdir "/goinfre/$SESSION/Microsoft Visual Studio";
fi
if [ ! -d "/goinfre/$SESSION/Mozilla" ]
then
	mkdir "/goinfre/$SESSION/Mozilla";
fi
if [ ! -d "/goinfre/$SESSION/OpenVR" ]
then
	mkdir "/goinfre/$SESSION/OpenVR";
fi
if [ ! -d "/goinfre/$SESSION/Oracle" ]
then
	mkdir "/goinfre/$SESSION/Oracle";
fi
if [ ! -d "/goinfre/$SESSION/SoapUI-5.6.0" ]
then
	mkdir "/goinfre/$SESSION/SoapUI-5.6.0";
fi
if [ ! -d "/goinfre/$SESSION/com.apple.ProtectedCloudStorage" ]
then
	mkdir "/goinfre/$SESSION/com.apple.ProtectedCloudStorage";
fi
if [ ! -d "/goinfre/$SESSION/com.apple.TCC" ]
then
	mkdir "/goinfre/$SESSION/com.apple.TCC";
fi
if [ ! -d "/goinfre/$SESSION/com.apple.backgroundtaskmanagementagent" ]
then
	mkdir "/goinfre/$SESSION/com.apple.backgroundtaskmanagementagent";
fi
if [ ! -d "/goinfre/$SESSION/com.apple.spotlight" ]
then
	mkdir "/goinfre/$SESSION/com.apple.spotlight";
fi
if [ ! -d "/goinfre/$SESSION/com.apple.touristd" ]
then
	mkdir "/goinfre/$SESSION/com.apple.touristd";
fi
if [ ! -d "/goinfre/$SESSION/dmd" ]
then
	mkdir "/goinfre/$SESSION/dmd";
fi
if [ ! -d "/goinfre/$SESSION/icdd" ]
then
	mkdir "/goinfre/$SESSION/icdd";
fi
if [ ! -d "/goinfre/$SESSION/videosubscriptionsd" ]
then
	mkdir "/goinfre/$SESSION/videosubscriptionsd";
fi
if [ ! -d "/goinfre/$SESSION/azuredatastudio" ]
then
	mkdir "/goinfre/$SESSION/azuredatastudio";
fi
if [ ! -d "/goinfre/$SESSION/discord" ]
then
	mkdir "/goinfre/$SESSION/discord";
fi

sleep 1;

# Check and install brew

echo "\n\033[33m----------- Downloading brew ... ----------\033[0m\n";

if [ ! -d "/goinfre/$SESSION/brew" ]
then
	curl -L https://github.com/Homebrew/brew/archive/1.9.0.tar.gz > /goinfre/$SESSION/brew1.9.0.tar.gz 2>/dev/null;
	tar -xvzf /goinfre/$SESSION/brew1.9.0.tar.gz &>/dev/null;
	rm -rf /goinfre/$SESSION/brew1.9.0.tar.gz &>/dev/null;
	mv ./brew-1.9.0 /goinfre/$SESSION/brew &>/dev/null;
	if [ ! -d "/Users/$SESSION/brew" ]
	then
		ln -s /goinfre/$SESSION/brew /Users/$SESSION 2> /dev/null;
	fi
	if [[ ( -d "/Users/$SESSION/brew" ) && ( -d "/goinfre/$SESSION/brew" ) ]]
	then
		echo "\033[32m------- brew has been installed successfully -------\033[0m\n";
		sleep 1;
		echo "\033[32m------- updating Homebrew ... -------\033[0m\n";
		brew update &> /dev/null
		brew doctor &> /dev/null
		echo "\033[32m------- brew has been updated successfully -------\033[0m\n";
	else
		echo "\033[31m------- brew has NOT been installed :( -------\033[0m\n";
		exit 1;
	fi
else
	sleep 1;
	echo "\033[33m------- brew already installed -------\033[0m\n";
fi

# Make links for PKInstallSandboxManager mono vscode

echo "\n\033[33m------- Make links for vscode to goinfre -------\033[0m\n";
sleep 1;

if [ ! -d "/goinfre/$SESSION/.vscode" ]
then
	mkdir /goinfre/$SESSION/.vscode
	echo "\033[32m------- vscode done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- vscode already linked -------\033[0m\n";
	sleep 1;
fi

# linking docker

echo "\n\033[33m------- Make links for docker to goinfre -------\033[0m\n";
sleep 1;

if [ ! -d "/Users/$SESSION/goinfre/.docker" ]
then
	if [ ! -d "/Users/$SESSION/goinfre/Containers" ]
	then
		mkdir /Users/$SESSION/goinfre/Containers
	fi
	mkdir /Users/$SESSION/goinfre/.docker
	echo "\033[32m------- docker done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- docker already linked -------\033[0m\n";
	sleep 1;
fi


# install node

if [ ! -d "/goinfre/$SESSION/brew/Cellar/node" ]
then
	echo "\033[32m------- installing node ... -------\033[0m\n";
	if [ -d "/goinfre/$SESSION/.npm" ]
	then
		rm -rf /Users/$SESSION/.npm &> /dev/null;
	fi
	brew install node &> /dev/null;
	npm install -g npm@7.4.0 &> /dev/null;
	echo "\033[32m------- node has been installed successfully -------\033[0m\n";
else
	echo "\033[32m------- Node already installed ! -------\033[0m\n";
fi

exit 0;
