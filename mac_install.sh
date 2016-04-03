#!/bin/bash

cp .tmux.conf ~/.tmux.conf
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
echo "source ~/.bashrc" > ~/.bash_profile

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
