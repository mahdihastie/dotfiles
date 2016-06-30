#!/usr/bin/env bash

cd ~
chsh -s $(which zsh)
git clone https://github.com/mahdihastie/dotfiles
cd ~/dotfiles
git submodule update --init --recursive
install/bootstrap.sh
