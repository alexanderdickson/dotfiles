DEFAULT_USER="alex"
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git battery node npm osx)

source $ZSH/oh-my-zsh.sh

# Allow Ctrl-x-e to open editor for commands
autoload -U edit-command-line

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

