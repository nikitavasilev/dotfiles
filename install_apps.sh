#!/bin/bash

################################################################
# Bash script to install apps on a new system (DeepinOS)       #
# Written by Nikita Vasilev (https://github.com/nikitavasilev) #
################################################################

# Update packages
echo 'Updating packages..'
sleep 1
sudo apt-get update -y

# Git
echo -e "\nDo you want to install GIT? (Highly recommended) [Y/n]"
read GIT

if [[ ${GIT} == "y" ]] || [[ ${GIT} == "Y" ]]
then
  echo -e '\nInstalling Git..'
  sudo apt-get install git -y

  # Git Configuration
  echo -e '\nCongigurating Git..'
  sleep 2

  echo -e '\nEnter the Global Username for Git (FirstName LastName):'
  read GIT_USER
  git config --global user.name "${GIT_USER}"

  echo -e "\nEnter the Global Email for Git:"
  read GIT_EMAIL
  git config --global user.email "${GIT_EMAIL}"

  echo -e '\nGit has been configured!'
  git config --list
else
  echo -e '\nVery bad choice :('
fi

sleep 2

# cURL
echo -e '\nDo you want to install cURL? (Recommended) [Y/n]'
read CURL

if [[ ${CURL} == "y" ]] || [[ ${CURL} == "Y" ]]
then
  echo -e '\nInstalling cURL..'
  sudo apt-get install curl -y

  echo -e 'Checking installation..\n'
  curl --version

  sleep 1
  echo -e '\ncURL installed succesfully!'
else
  echo -e '\nBad choice :('
fi

sleep 2

# Yarn
echo -e '\nDo you want to install Yarn? (Recommended) [Y/n]'
read YARN

if [[ ${YARN} == "y" ]] || [[ ${YARN} == "Y" ]]
then
  echo -e '\nInstalling Yarn..'
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

  sleep 2
  echo -e '\nUpdating sources list && Installing..'
  sudo apt-get update && sudo apt-get install yarn -y

  echo -e '\nChecking installation:'
  yarn --version

  sleep 1
  echo -e '\nYarn installed succesfully!'
else
  echo -e '\nBad choice :('
fi

sleep 2

# Spotify
echo -e '\nDo you want to install Spotify? [Y/n]'
read SPOTIFY

if [[ ${SPOTIFY} == "y" ]] || [[ ${SPOTIFY} == "Y" ]]
then
  echo -e '\nInstalling Spotify...'
  snap install spotify

  echo -e '\nChecking installation:'
  spotify --version

  sleep 1
  echo -e '\nSpotify installed succesfully!'
fi

sleep 2

# Python3 + pip
echo -e '\nDo you want to install Python3 + pip3? [Y/n]'
read PYTHON

if [[ ${PYTHON} == "y" ]] || [[ ${PYTHON} == "Y" ]]
then
  # Python3
  echo -e '\nInstalling Python3..'
  sudo apt-get install python3 -y

  echo -e 'Checking installation..\n'
  python3 --version

  sleep 1
  echo -e '\nPython3 installed succesfully!'
  sleep 2

  # Python3-pip
  echo -e '\nInstalling Python3-pip..'
  sudo apt-get install python3-pip -y

  echo -e '\nChecking installation..'
  pip3 --version

  sleep 1
  echo -e '\nPip3 installed succesfully!'
fi

sleep 2

# Ruby + RubyOnRails + Bundler
echo -e '\nDo you want to install Ruby + RubyOnRails + Bundler? [Y/n]'
read RUBY

if [[ ${RUBY} == "y" ]] || [[ ${RUBY} == "Y" ]]
then
  # Ruby
  echo -e '\nInstalling Ruby..'
  sudo apt install ruby-full -y

  echo -e 'Checking installation..\n'
  ruby --version

  sleep 1
  echo -e '\nRuby installed succesfully!'
  sleep 2

  # Bundler
  echo -e '\nInstalling Bundler..'
  sudo gem install bundler

  echo -e 'Checking installation..\n'
  bundler --version

  sleep 1
  echo -e '\nBundler installed succesfully!'
  sleep 2

  # Rails
  echo -e '\nInstalling Ruby On Rails..'
  sudo gem install rails

  echo -e '\nChecking installation..'
  rails --version

  sleep 1
  echo -e '\nRails installed succesfully!'
  sleep 2
fi
