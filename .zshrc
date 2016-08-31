# general aliases
alias ll="ls -la"
alias v="f -e vim"

# fasd at startup
eval "$(fasd --init auto)"

# brew shortcuts
alias brew-update="brew update && brew upgrade && brew cask update"
alias brew-cleanup="brew cleanup && brew cleanup -s && brew cask cleanup"
alias brew-brew="brew-update && brew-cleanup"

# set history size
export HISTFILE="/Users/leo.wu/.zsh_history"
export HISTSIZE=20000
export SAVEHIST=9223372036854775807

# load colors for prompt
autoload -U colors
colors

# set custom prompt
export PS1="%{$fg[blue]%}%n%{$reset_color%}:%{$fg[cyan]%}%~%{$reset_color%}$ "

# start vim mode
bindkey -v

# git completion
autoload -Uz compinit && compinit

# Meraki stuff
alias devfs='mkdir -p ~/Volumes/dev108 ; sshfs leowu@dev108.meraki.com:/home/leowu/ ~/Volumes/dev108 -oauto_cache,reconnect,volname=dev108'

# start rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

