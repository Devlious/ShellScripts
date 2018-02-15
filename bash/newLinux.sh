#!/bin/bash

DISTRO="$(uname)"
if [ DISTRO="Darwin" ]; then
	echo "MacOS - $DISTRO"
elif [ DISTRO="Linux" ]; then
	echo "$DISTRO"
	# Check if Ubuntu/Debian and install all for a Vundle perfect function
	if [ -e /usr/bin/apt-get || -e /usr/bin/apt  ]; then
		echo "Ubuntu/Debian"
		if [ -e /usr/bin/git]; then
			echo "Ubuntu is already installed"
		else
			sudo apt-get install git
		fi

	# Check if Archlinux and install all for a Vundle perfect function
	elif [ -e /usr/bin/pacman ]; then
		echo "Archlinux"

	# Check if Redhat and install all for a Vundle perfect function
	elif [ -e /usr/bin/yum ]; then
		echo "Redhat"
	else
		echo "Sorry No Linux Distro detected :("
	fi
else
	echo "Sorry, GNU not found :P"
fi
