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

# This loads nvm bash_completion
# Auto-added by nvm install script.
# We have our own custom nvm initializer.
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Added by Homebrew (for Intel only)
# Path is likely different for Intel vs Arm Macs...
# Arm install adds to .zprofile
# export PATH="/usr/local/sbin:$PATH"
