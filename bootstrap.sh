#!/bin/zsh

###
### Shopify Spin bootstrap script

# Install Starship prompt (may require `nix-env`)
# nix-env -iA nixos.starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Install exa using Nix installed... as `apt install` does not seem to work
nix-env -i exa

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ZSH plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Shell config
ln -sfn ~/dotfiles/.config-shell ~/.config-shell

# Starship config
ln -sfn ~/dotfiles/.config ~/.config

# ZSH
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Git
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# GPG
gpgconf --launch dirmngr
gpg --keyserver keys.openpgp.org --recv D5CBA8EA14BEBE3FF3E0D21945A002F7F81F19B9

source ~/.zshrc
