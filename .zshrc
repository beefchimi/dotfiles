###
### ZSH Config

source $HOME/.zsh-config/variables.zsh
source $HOME/.zsh-config/aliases.zsh
source $HOME/.zsh-config/man-pages.zsh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  source $HOME/.zsh-config/nvm.zsh
else
  source $HOME/.zsh-config/shopify.zsh
fi

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# HyperJS fix for leading percent symbol
unsetopt PROMPT_SP

# Starship prompt
eval "$(starship init zsh)"

# Environment check
if [[ $DESKTOP_SESSION == "zorin" ]]; then
  echo "\u2a53 Zorin OS"
elif [[ $SPIN ]]; then
  echo "\uaa5c Spin Shell"
else
  echo "\uf8ff Mac OS"
fi
