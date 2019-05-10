#!/bin/bash

# Installing NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

dir="$HOME/.zshrc"
cd "$dir"

sudo sh -c 'echo "\nexport NVM_DIR=~/.nvm
[ -s "\$NVM_DIR/nvm.sh" ] && . "\$NVM_DIR/nvm.sh"" >> this_file.sh'

#Nodejs
nvm install v12.1.0
