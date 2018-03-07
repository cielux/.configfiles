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

# Meraki stuff
alias devfs="mkdir -p ~/Volumes/dev108 ; sshfs leowu@dev108.meraki.com:/home/leowu/ ~/Volumes/dev108 -oauto_cache,reconnect,volname=dev108"
alias monty-deploy="brew unlink node && brew link --force node@4 && git pull -r && grunt deploy && brew unlink node@4 && brew link node"
alias salesforce-pull="git checkout wudev && git pull -r && git checkout dev && git pull -r && git checkout staging && git pull -r && git checkout master && git pull -r"

# necessary for macOS Sierra's ssh key forwarding to work
ssh-add -K &> /dev/null

