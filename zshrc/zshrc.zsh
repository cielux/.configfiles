# general aliases
alias ll="ls -la"
alias v="f -e vim"

# fasd at startup
eval "$(fasd --init auto)"

# brew shortcuts
alias brew-update="brew update && brew upgrade"
alias brew-cleanup="brew cleanup && brew cleanup -s && brew cask cleanup"
alias brew-brew="brew-update && brew-cleanup"

# start vim mode
bindkey -v

