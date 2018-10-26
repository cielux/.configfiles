# Meraki stuff
alias devfs="mkdir -p ~/Volumes/dev121 ; sshfs leowu@dev121.meraki.com:/home/leowu/ ~/Volumes/dev121 -oauto_cache,reconnect,volname=dev121"
export -f refs
alias salesforce-pull="git checkout wudev && git pull -r && git checkout dev && git pull -r && git checkout staging && git pull -r && git checkout master && git pull -r"

alias link-node4="brew unlink node ; brew link --overwrite --force node@4"
alias link-node="brew unlink node@4 ; brew link node"
alias monty-deploy="link-node4 ; git pull -r && grunt deploy ; link-node"
alias monty-deploy-staging="link-node4 ; git pull -r && grunt deploy-staging ; link-node"

refs() {
  sudo umount -f ~/Volumes/dev121
  devfs
  dir=$PWD
  cd $HOME
  cd $dir
  unset dir
}

