###
### Bash Config

source $HOME/.config-shell/variables.sh
source $HOME/.config-shell/functions/index.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  source $HOME/.config-shell/bash/linux.bash
  source $HOME/.config-shell/nvm.sh
fi

source $HOME/.config-shell/bash/variables.bash
source $HOME/.config-shell/aliases.sh

# Initialize Starship prompt
if command -v starship &> /dev/null; then
  eval "$(starship init bash)"
fi

# Added by Rust installation
# . "$HOME/.cargo/env"

envConfirmation "Bash"
