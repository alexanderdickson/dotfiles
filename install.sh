#!/bin/bash

# Symlink the configs
for file in vimrc gitconfig gitignore; do
	ln -sf "$(pwd)/$file" ~/.$file
	echo "$file linked to ~/.$file"
done

for file in fish.config fish_plugins; do
	ln -sf "$(pwd)/$file" ~/.config/fish/$file
	echo "$file linked to ~/.config/fish/$file"
done

# Switch default shell to fish
sudo echo /usr/local/bin/fish >> /etc/shells
chsh -s /usr/local/bin/fish
