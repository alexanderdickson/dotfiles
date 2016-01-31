#!/bin/bash

for file in vimrc gitconfig gitignore zshrc; do
	ln -sf "$(pwd)/$file" ~/.$file
	echo "$file linked to ~/.$file"
done

if uname -a | grep -q Darwin; then
    brew install fzf
else
    wget -O /tmp/fzf.tgz https://github.com/junegunn/fzf-bin/releases/download/0.9.11/fzf-0.9.11-linux_amd64.tgz
    pushd ~/bin > /dev/null
    rm fzf*
    tar xf /tmp/fzf.tgz
    mv -f fzf* fzf
    popd > /dev/null
    rm /tmp/fzf.tgz
fi
