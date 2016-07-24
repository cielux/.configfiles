#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# copy configuration files
cp $DIR/.tmux.conf ~/.tmux.conf
cp $DIR/.vimrc ~/.vimrc
cp $DIR/.zshrc ~/.zshrc

# create vim backup and swap folders
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/backup

# install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install Xcode before continuing

# install brew and some useful packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install tmux macvim fasd python git zsh zsh-completions node cmake ctags
brew cask install google-chrome google-play-music-desktop-player slack java

# get brew rmtree
brew tap beeftornado/rmtree && brew install beeftornado/rmtree/brew-rmtree

