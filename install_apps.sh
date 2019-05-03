#!/bin/bash/

################################################################
# Bash script to install apps on a new system (DeepinOS)       #
# Written by Nikita Vasilev (https://github.com/nikitavasilev) #
################################################################

# Update packages
sudo apt-get update -y

# Git
echo 'Installing Git..'
sudo apt-get install git -y

# Git Configuration
echo 'Congigurating Git..'

echo 'Enter the Global Username for Git (FirstName LastName):'
read GIT_USER
git config --global user.name "${GIT_USER}"

echo "Enter the Global Email for Git:"
read GIT_EMAIL
git config --global user.email "${GIT_EMAIL}"

echo 'Git has been configured!'
git config --list

