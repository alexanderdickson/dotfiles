#!/bin/bash

for file in vimrc gitconfig gitignore zshrc; do
	ln -sf "$(pwd)/$file" ~/.$file
	echo "$file linked to ~/.$file"
done

if uname -a | grep -q Darwin; then
    brew install fzf
else
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi
