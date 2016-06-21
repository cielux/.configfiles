alias ll="ls -la"
eval "$(fasd --init auto)"
alias brew-update="brew update && brew upgrade && brew cask update"
alias brew-cleanup="brew cleanup && brew cleanup -s && brew cask cleanup"
alias brew-brew="brew-update && brew-cleanup"

# Meraki stuff
alias devfs='mkdir -p /Volumes/dev100 ; sshfs leowu@dev110.meraki.com:/home/wagseye/ /Volumes/dev100 -oauto_cache,reconnect,volname=dev100'

