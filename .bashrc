alias ll="ls -la"
eval "$(fasd --init auto)"
alias brew-update="brew update && brew upgrade && brew cask update"
alias brew-cleanup="brew cleanup && brew cleanup -s && brew cask cleanup"
alias brew-brew="brew-update && brew-cleanup"

