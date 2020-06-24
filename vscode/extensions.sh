#!/bin/bash

set -e

# Can be updated with:
# code --list-extensions
CODE_EXTENSIONS=(
  bajdzis.vscode-database
  dbaeumer.vscode-eslint
  Equinusocio.vsc-material-theme
  esbenp.prettier-vscode
  formulahendry.code-runner
  ms-python.python
  ms-vscode.cpptools
  ms-vsliveshare.vsliveshare
  ms-vsliveshare.vsliveshare-audio
  msjsdiag.debugger-for-chrome
  ms-azuretools.vscode-docker
  vscode-icons-team.vscode-icons
  foxundermoon.shell-format
  digitalbrainstem.javascript-ejs-support
)

for ext in "${CODE_EXTENSIONS[@]}"; do
  code --install-extension "$ext"
done
