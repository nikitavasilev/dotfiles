#!/bin/bash

# Bumblebee Primus
echo 'Installing Bumblebee Primus..'
sleep 2

sudo apt-get install bumblebee primus -y
echo -e '\nBumblebee Primus succesfully installed!'

# Plymouth-Themes
echo -e '\nInstalling Plymouth-Themes..'
sleep 2

sudo apt install plymouth-themes -y
echo -e '\nPlymouth-Themes succesfully installed!'

# Console-Setup
echo -e '\nInstalling Console-Setup..'
sleep 2

sudo apt install console-setup -y
echo -e '\nConsole-setup succesfully installed!'

# Updating & Upgrading
echo -e '\nUpdating packages..'
sleep 2
sudo apt-get update

echo -e '\nUpgrading packages..'
sleep 2
sudo apt-get upgrade

# Exit a Reboot
echo -e 'Exiting && Rebooting..'
sleep 2
exit && reboot
