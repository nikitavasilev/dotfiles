#!/bin/bash

set -e

# Can be updated with:
# code --list-extensions
CODE_EXTENSIONS=(
  kube.42header
  formulahendry.code-runner
  ms-vscode.cpptools
  equinusocio.vsc-community-material-theme
  msjsdiag.debugger-for-chrome
  digitalbrainstem.javascript-ejs-support
  dbaeumer.vscode-eslint
  ms-vsliveshare.vsliveshare
  ms-vsliveshare.vsliveshare-audio
  equinusocio.vsc-material-theme
  equinusocio.vsc-material-theme-icons
  attilabuti.vscode-mjml
  esbenp.prettier-vscode
  ms-python.python
  foxundermoon.shell-format
  bajdzis.vscode-database
  vscode-icons-team.vscode-icons
)

for ext in "${CODE_EXTENSIONS[@]}"; do
  code --install-extension "$ext"
done
