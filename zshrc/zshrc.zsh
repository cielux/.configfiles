# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/andrewngo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# necessary for macOS Sierra's ssh key forwarding to work
ssh-add -K &> /dev/null

# brew shortcuts
alias brew-update="brew update && brew upgrade"
alias brew-cleanup="brew cleanup && brew cleanup -s"
alias brew-brew="brew-update && brew-cleanup"

alias gowork="cd ~/Work/everlane.com"

DEFAULT_USER=$USER
export PS1

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh


export MIX_HOST=production-leather.chhii9rucmty.us-east-1.rds.amazonaws.com
export MIX_PASSWORD=NZTHJxApkb4iYfP2nKfGTrsq

# Add colors to Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
