#!/bin/bash

# If something wrong, please check the documentation at:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

# ZSH
echo 'Installing ZSH..'
sudo apt-get install zsh -y

echo -e '\nVerifying ZSH installation..'
echo -e 'Result should be zsh 5.1.1 or more recent:\n'

sleep 3
zsh --version

echo -e '\nMaking ZSH the default shell..'

sleep 2
chsh -s $(which zsh)

echo -e '\nPlease exit the terminal, logout of your computer, and login again.'
echo -e '\nThen, open the terminal back again, and run:'
echo 'bash zsh/verify.sh'
