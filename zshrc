DEFAULT_USER="alex"
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git last-working-dir mvn web-search colored-man-pages cp battery node npm osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Use emacs style shortcuts
set -o emacs

# Enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
