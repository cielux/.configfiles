#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"

# copy configuration files
cp $DIR/tmux.conf ~/.tmux.conf
cp $DIR/vimrc ~/.vimrc
cp $DIR/zshrc ~/.zshrc

# create vim backup and swap folders
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/backup

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install Xcode (requires input) if it's not installed
brew install mas
if mas list | grep -q Xcode; then
  echo "Xcode is already installed, continuing"
else
  mas install 497799835
fi
# accept Xcode license
sudo xcodebuild -license accept

# fix some weird problem with Xcode and CLT
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

# install packages
# tools: macvim, zsh, zsh-completions, git, tmux, fasd
# dependencies: reattach-to-user-namespace (vim copy and paste), cmake (vim plugin YouCompleteMe), ctags (vim plugin Tagbar)
brew install macvim --with-override-system-vim
brew install zsh zsh-completions git tmux fasd reattach-to-user-namespace cmake ctags
# install programs
brew cask install google-chrome slack java

# make zsh the default shell
if ! cat /etc/shells | grep -q $(which zsh); then
  sudo bash -c 'echo $(which zsh) >> /etc/shells'
fi
chsh -s $(which zsh)

# get brew rmtree
brew tap beeftornado/rmtree

