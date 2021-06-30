###
### ZSH Config

source $HOME/.zsh-config/variables.zsh
source $HOME/.zsh-config/aliases.zsh
source $HOME/.zsh-config/man-pages.zsh
source $HOME/.zsh-config/shopify.zsh

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# HyperJS fix for leading percent symbol
unsetopt PROMPT_SP

# Starship prompt
eval "$(starship init zsh)"

# Spin testing

if [ $SPIN ]; then
  echo "SIMPLE: SPIN is TRUE"
else
  echo "SIMPLE: SPIN is FALSE"
fi

if [ -v $SPIN ]; then
  echo "FLIP: We ARE NOT in a SPIN env"
else
  echo "FLIP: We are in a SPIN env"
fi
