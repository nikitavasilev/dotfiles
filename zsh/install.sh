#!/bin/bash/

# If something wrong, please check the documentation at:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

# ZSH
echo 'Installing ZSH..'
sudo apt-get install zsh -y

echo '\nVerifying ZSH installation..'
echo 'Result should be zsh 5.1.1 or more recent:\n'

sleep 3
zsh --version

echo '\nMaking ZSH the default shell..'

sleep 2
chsh -s $(which zsh)

echo '\nPlease exit the terminal, logout of your computer, and login again.'
echo '\nThen, open the terminal back again, and run:'
echo 'sh zsh/verify.sh'
