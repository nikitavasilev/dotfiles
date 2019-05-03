#!/bin/bash/

# If something wrong, please check the documentation at:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH

# Verify if ZSH is default shell
echo 'Verifying that ZSH is the default shell..'
echo 'The result should be /bin/zsh or something similar:\n'

sleep 3

echo $SHELL

sleep 3

echo '\nIf the result is not as expected, please check the doc at:'
echo 'https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH'

echo '\nOtherwise run:'
echo 'sh zsh/oh-my-zsh.sh'