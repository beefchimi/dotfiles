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

. $HOME/.config-shell/bash/variables.bash
. $HOME/.config-shell/aliases.sh

# Initialize Starship prompt
if command -v starship &> /dev/null; then
  eval "$(starship init bash)"
fi

envConfirmation "Bash"

# Added by Shopify

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () {
  source /opt/dev/sh/chruby/chruby.sh; chruby "$@";
}

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
