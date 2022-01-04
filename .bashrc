###
### Bash Config

. $HOME/.config-shell/variables.sh
. $HOME/.config-shell/functions/general.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  . $HOME/.config-shell/bash/linux.bash
  . $HOME/.config-shell/nvm.sh
fi

. $HOME/.config-shell/bash/variables.bash
. $HOME/.config-shell/aliases.sh

# Initialize Starship prompt
if command -v starship &> /dev/null; then
  eval "$(starship init bash)"
fi

envConfirmation "Bash"
