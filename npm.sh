#!/bin/bash

# Update NPM
echo 'Updating NPM..'
sudo npm install npm@latest -g
echo 'NPM succesfully updated!'

# Eslint
echo -e '\nInstalling Eslint..'
sudo npm install -g eslint
echo 'Eslint succesfully installed!'

# Nodemon
echo -e '\nInstalling Nodemon..'
sudo npm install nodemon -g
echo 'Nodemon succesfully installed!'

# npm-check-updates
echo -e '\nInstalling npm-check-updates..'
sudo npm install -g npm-check-updates
echo -e 'npm-check-updates succesfully installed!\n'

npm outdated -g
echo 'No outdated packages.'

echo -e '\nList of Global NPM packages:'
npm list --depth=0 -g
