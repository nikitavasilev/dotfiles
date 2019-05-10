#!/bin/bash

# If something wrong, please check the documentation at:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

# Verify if ZSH is default shell
echo 'Verifying that ZSH is the default shell..'
echo -e 'The result should be /bin/zsh or something similar:\n'

sleep 2

echo $SHELL

sleep 2

echo -e '\nIf the result is not as expected, please check the doc at:'
echo 'https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH'

echo -e '\nOtherwise run:'
echo 'bash zsh/oh-my-zsh.sh'
