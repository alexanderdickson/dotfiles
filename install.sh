#!/bin/bash

for file in vimrc gitconfig gitignore zshrc; do
	ln -sf "$(pwd)/$file" ~/.$file
	echo "$file linked to ~/.$file"
done

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Install zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
