#!/bin/zsh

###
### Shopify Spin bootstrap script

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Shell config
ln -sfn ~/dotfiles/.config-shell ~/.config-shell

# Starship config
ln -sf ~/dotfiles/.config/starship.toml ~/.config/starship.toml

# Bash & ZSH
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Git
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# Post install script
ln -sf ~/dotfiles/spin-post-install.sh ~/spin-post-install.sh

# GPG
gpgconf --launch dirmngr
gpg --keyserver keys.openpgp.org --recv D5CBA8EA14BEBE3FF3E0D21945A002F7F81F19B9

# Spin does not correctly install everything on initialization,
# so this may need to be manually run once within the shell.
source ~/spin-post-install.sh
