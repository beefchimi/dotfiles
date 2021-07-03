###
### Bash Config

. $HOME/.config-shell/variables.sh
. $HOME/.config-shell/functions.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  . $HOME/.config-shell/bash/linux.bash
  . $HOME/.config-shell/nvm.sh
else
  . $HOME/.config-shell/bash/shopify.bash
fi

. $HOME/.config-shell/aliases.sh

# Initialize Starship prompt
eval "$(starship init bash)"

envConfirmation "Bash"
