#!/bin/sh

if [ ! -d "/goinfre/mobouzar/Application Support" ]
then
	mkdir "/goinfre/mobouzar/Application Support";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/AddressBook" ]
then
	mkdir "/goinfre/mobouzar/Application Support/AddressBook";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/AndroidStudio4.0" ]
then
	mkdir "/goinfre/mobouzar/Application Support/AndroidStudio4.0";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Atom" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Atom";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/CallHistoryDB" ]
then
	mkdir "/goinfre/mobouzar/Application Support/CallHistoryDB";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/CallHistoryTransactions" ]
then
	mkdir "/goinfre/mobouzar/Application Support/CallHistoryTransactions";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/CloudDocs" ]
then
	mkdir "/goinfre/mobouzar/Application Support/CloudDocs";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Code" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Code";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/CoreParsec" ]
then
	mkdir "/goinfre/mobouzar/Application Support/CoreParsec";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/CrashReporter" ]
then
	mkdir "/goinfre/mobouzar/Application Support/CrashReporter";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/DiskImages" ]
then
	mkdir "/goinfre/mobouzar/Application Support/DiskImages";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Dock" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Dock";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Google" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Google";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/JREInstaller" ]
then
	mkdir "/goinfre/mobouzar/Application Support/JREInstaller";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Java" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Java";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Knowledge" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Knowledge";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Microsoft" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Microsoft";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Microsoft AutoUpdate" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Microsoft AutoUpdate";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Microsoft Update Assistant" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Microsoft Update Assistant";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Microsoft Visual Studio" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Microsoft Visual Studio";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Mozilla" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Mozilla";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/OpenVR" ]
then
	mkdir "/goinfre/mobouzar/Application Support/OpenVR";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/Oracle" ]
then
	mkdir "/goinfre/mobouzar/Application Support/Oracle";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/SoapUI-5.6.0" ]
then
	mkdir "/goinfre/mobouzar/Application Support/SoapUI-5.6.0";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/com.apple.ProtectedCloudStorage" ]
then
	mkdir "/goinfre/mobouzar/Application Support/com.apple.ProtectedCloudStorage";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/com.apple.TCC" ]
then
	mkdir "/goinfre/mobouzar/Application Support/com.apple.TCC";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/com.apple.backgroundtaskmanagementagent" ]
then
	mkdir "/goinfre/mobouzar/Application Support/com.apple.backgroundtaskmanagementagent";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/com.apple.spotlight" ]
then
	mkdir "/goinfre/mobouzar/Application Support/com.apple.spotlight";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/com.apple.touristd" ]
then
	mkdir "/goinfre/mobouzar/Application Support/com.apple.touristd";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/dmd" ]
then
	mkdir "/goinfre/mobouzar/Application Support/dmd";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/icdd" ]
then
	mkdir "/goinfre/mobouzar/Application Support/icdd";
fi
if [ ! -d "/goinfre/mobouzar/Application Support/videosubscriptionsd" ]
then
	mkdir "/goinfre/mobouzar/Application Support/videosubscriptionsd";
fi

sleep 1;

# Check and install brew

echo "\n\033[33m----------- Downloading brew ... ----------\033[0m\n";

if [ ! -d "/goinfre/mobouzar/brew" ]
then
	curl -L https://github.com/Homebrew/brew/archive/1.9.0.tar.gz > /goinfre/mobouzar/brew1.9.0.tar.gz 2>/dev/null;
	tar -xvzf /goinfre/mobouzar/brew1.9.0.tar.gz &>/dev/null;
	rm -rf /goinfre/mobouzar/brew1.9.0.tar.gz &>/dev/null;
	mv ./brew-1.9.0 /goinfre/mobouzar/brew &>/dev/null;
	if [ ! -d "/Users/mobouzar/brew" ]
	then
		ln -s /goinfre/mobouzar/brew /Users/mobouzar 2> /dev/null;
	fi
	if [[ ( -d "/Users/mobouzar/brew" ) && ( -d "/goinfre/mobouzar/brew" ) ]]
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

if [ ! -d "/goinfre/mobouzar/.vscode" ]
then
	mkdir /goinfre/mobouzar/.vscode
	echo "\033[32m------- vscode done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- vscode already linked -------\033[0m\n";
	sleep 1;
fi

# linking docker

echo "\n\033[33m------- Make links for docker to goinfre -------\033[0m\n";
sleep 1;

if [ ! -d "/Users/mobouzar/goinfre/.docker" ]
then
	if [ ! -d "/Users/mobouzar/goinfre/Containers" ]
	then
		mkdir /Users/mobouzar/goinfre/Containers
	fi
	mkdir /Users/mobouzar/goinfre/.docker
	echo "\033[32m------- docker done -------\033[0m\n";
	sleep 1;
else
	echo "\033[32m------- docker already linked -------\033[0m\n";
	sleep 1;
fi


# install node

if [ ! -d "/goinfre/mobouzar/brew/Cellar/node" ]
then
	echo "\033[32m------- installing node ... -------\033[0m\n";
	if [ -d "/goinfre/mobouzar/.npm" ]
	then
		rm -rf /Users/mobouzar/.npm &> /dev/null;
	fi
	brew install node &> /dev/null;
	npm install -g npm@7.4.0 &> /dev/null;
	mv /Users/mobouzar/.npm /goinfre/mobouzar/ &> /dev/null;
	ln -s /goinfre/mobouzar/.npm /Users/mobouzar &> /dev/null;
	echo "\033[32m------- node has been installed successfully -------\033[0m\n";
else
	echo "\033[32m------- Node already installed ! -------\033[0m\n";
fi

exit 0;
