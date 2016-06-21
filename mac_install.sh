#!/bin/bash

cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
echo "source ~/.bashrc" > ~/.bash_profile

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# to-do: make a script to install brew, get Xcode (if possible, might not be) and install macvim, fasd, tmux, brew-rmtree

