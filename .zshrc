###
### ZSH Config

source $HOME/.config-shell/variables.sh
source $CONFIG_ZSH/variables.zsh

source $CONFIG_SHELL/functions.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  source $CONFIG_SHELL/nvm.sh
else
  source $CONFIG_ZSH/shopify.zsh
fi

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# HyperJS fix for leading percent symbol
unsetopt PROMPT_SP

# Initialize Starship prompt
eval "$(starship init zsh)"

source $CONFIG_SHELL/aliases.sh
source $CONFIG_ZSH/aliases.zsh

source $CONFIG_ZSH/man-pages.zsh

envConfirmation "ZSH"
