###
### ZSH Config

source $HOME/.config-zsh/variables.zsh
source $HOME/.config-zsh/aliases.zsh
source $HOME/.config-zsh/man-pages.zsh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  source $HOME/.config-zsh/nvm.zsh
else
  source $HOME/.config-zsh/shopify.zsh
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
  echo "$DITHER_PROMPT \u2a53 [ZSH] Zorin OS $DITHER_PROMPT_REVERSE"
elif [[ $SPIN ]]; then
  echo "$DITHER_PROMPT \uaa5c [ZSH] Spin Shell $DITHER_PROMPT_REVERSE"
else
  echo "$DITHER_PROMPT \uf8ff [ZSH] Mac OS $DITHER_PROMPT_REVERSE"
fi
