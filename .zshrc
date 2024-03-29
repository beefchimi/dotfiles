###
### ZSH Config

source $HOME/.config-shell/variables.sh
source $HOME/.config-shell/zsh/variables.zsh

source $HOME/.config-shell/functions/index.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  source $HOME/.config-shell/nvm.sh
fi

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git nvm zsh-autosuggestions zsh-syntax-highlighting)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

source $HOME/.config-shell/zsh/options.zsh
source $HOME/.config-shell/zsh/plugins.zsh

# Initialize Starship prompt
if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

source $HOME/.config-shell/aliases.sh
source $HOME/.config-shell/zsh/aliases.zsh

source $HOME/.config-shell/zsh/man-pages.zsh

envConfirmation "ZSH"
