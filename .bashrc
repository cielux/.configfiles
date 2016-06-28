# general aliases
alias ll="ls -la"

# fasd at startup
eval "$(fasd --init auto)"

# brew shortcuts
alias brew-update="brew update && brew upgrade && brew cask update"
alias brew-cleanup="brew cleanup && brew cleanup -s && brew cask cleanup"
alias brew-brew="brew-update && brew-cleanup"

# format history with date and time
export HISTTIMEFORMAT="[%F %T] "

# set unlimited history
export HISTFILESIZE=
export HISTSIZE=

# add tmux history to bash history
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Meraki stuff
alias devfs='mkdir -p ~/Volumes/dev108 ; sshfs leowu@dev108.meraki.com:/home/leowu/ ~/Volumes/dev108 -oauto_cache,reconnect,volname=dev108'

