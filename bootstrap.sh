#!/usr/bin/env bash

test -f ~/bootstrapped && exit

cd ~

sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install emacs25-nox tmux git zsh make
sudo apt-get install golang-go

mkdir src
cd src
git clone https://github.com/Everysick/dotfiles.git
cd dotfiles
make

sudo chsh -s /usr/bin/zsh ubuntu

date > ~/bootstrapped
