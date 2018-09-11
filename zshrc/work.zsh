# Meraki stuff
alias devfs="mkdir -p ~/Volumes/dev121 ; sshfs leowu@dev121.meraki.com:/home/leowu/ ~/Volumes/dev121 -oauto_cache,reconnect,volname=dev121"
alias monty-deploy="brew unlink node && brew link --force node@4 ; git pull -r && grunt deploy ; brew unlink node@4 && brew link node"
alias salesforce-pull="git checkout wudev && git pull -r && git checkout dev && git pull -r && git checkout staging && git pull -r && git checkout master && git pull -r"

