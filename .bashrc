###
### Bash Config

. $HOME/.config-shell/variables.sh
. $CONFIG_SHELL/functions.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  . $CONFIG_BASH/linux.bash
  . $CONFIG_SHELL/nvm.sh
else
  . $CONFIG_BASH/shopify.bash
fi

. $CONFIG_SHELL/aliases.sh

# Initialize Starship prompt
eval "$(starship init bash)"

envConfirmation "Bash"
