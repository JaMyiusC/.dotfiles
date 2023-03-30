#!/bin/bash

# Appends any output from echo statements
exec >> linuxsetup.log 2>&1
# Checks if the operating system type is Linux
if [[ $(uname) != "Linux" ]]; then
	echo "ERROR : this script only works on Linux Systems."
	exit 1
fi
#Creates the trash directory in home dir if it doesnt exist
mkdir -p ~/".TRASH"
#if vimrc file exists in home dir changes its name
if [[ -f ~/.vimrc ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "The current vimrc file was changed to '.bup.vimrc'."
fi
# Redirect (overwrite) the contents of etc/vimrc file to a file called '.virmc' in the home dir
cp /etc/vimrc ~/.vimrc
#Adding the statment
echo "source /dotfiles/etc/bashrc.custom" >> ~/.bashrc



