#!/bin/bash

test -f ~/bootstrapped && exit

cd ~

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install emacs25-nox tmux git zsh make
sudo apt-get install golang-go

mkdir src
cd src
git clone https://github.com/s4ichi/dotfiles.git
cd dotfiles
make

sudo chsh -s `which zsh` vagrant

date > ~/bootstrapped
