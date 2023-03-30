#!/bin/bash

#removing the vimrc file in the home dir
rm -f ~/.vimrc

#removing the line 'source
sed -i '/source\/\.dotfiles\/bashrc_custom/d' ~/.bashrc

#Removing the .TRASH dir
rm -rf ~/".TRASH"
