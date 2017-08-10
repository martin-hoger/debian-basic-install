#!/usr/bin/env bash

sudo apt-get install -y git wget vim-nox
curl -L https://raw.githubusercontent.com/martin-hoger/.vim/master/bin/install.sh | sh
#Set default editor
update-alternatives --set editor /usr/bin/vim.nox
sudo update-alternatives --set editor /usr/bin/vim.nox

