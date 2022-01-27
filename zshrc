DEFAULT_USER="alex"
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

# Of course
EDITOR="vim"

# Zsh plugins
plugins=(git git-extras mercurial github common-aliases last-working-dir mvn web-search colored-man-pages cp battery node npm macos zsh-syntax-highlighting catimg rsync alias-finder brew command-not-found frontend-search gitignore iterm2 jsontools nvm yarn sudo zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"

# Use emacs style shortcuts
set -o emacs

# Enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Make it easy to re-source the updated config
alias reload="source ~/.zshrc"

# Print each PATH entry on a new line
alias path="echo -e ${PATH//:/\\n}"
