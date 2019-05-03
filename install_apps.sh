#!/bin/bash/

################################################################
# Bash script to install apps on a new system (DeepinOS)       #
# Written by Nikita Vasilev (https://github.com/nikitavasilev) #
################################################################

# Update packages
sudo apt-get update -y

# Git
echo '\nInstalling Git..'
sudo apt-get install git -y

# Git Configuration
echo '\nCongigurating Git..'
sleep 2

echo '\nEnter the Global Username for Git (FirstName LastName):'
read GIT_USER
git config --global user.name "${GIT_USER}"

echo "\nEnter the Global Email for Git:"
read GIT_EMAIL
git config --global user.email "${GIT_EMAIL}"

echo '\nGit has been configured!'
git config --list

