#!/bin/zsh

###
### Shopify Spin post-install script

# Install Starship prompt (force "yes")
if ! command -v starship &> /dev/null; then
  sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --force
fi

# Install exa using Nix... as `apt install` does not seem to work
if ! command -v exa &> /dev/null; then
  if ! command -v nix-env &> /dev/null; then
    nix-env -i exa
  fi
fi

# Reload ZSH
source ~/.zshrc