DEFAULT_USER="alex"
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git git-extras github common-aliases last-working-dir mvn web-search colored-man-pages cp battery node npm osx zsh-syntax-highlighting catimg rsync)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"

# Use emacs style shortcuts
set -o emacs

# Enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Print each PATH entry on a new line
alias path='echo -e ${PATH//:/\\n}'
