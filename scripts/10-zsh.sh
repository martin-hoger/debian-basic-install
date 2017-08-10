#!/usr/bin/env bash

sudo apt-get install -y zsh
sudo chsh -s $(which zsh) $(whoami)
curl -L https://raw.githubusercontent.com/martin-hoger/.zsh/master/bin/install.sh | sh

