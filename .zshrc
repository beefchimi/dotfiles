###
### ZSH Config

source $HOME/.config-shell/variables.sh
source $HOME/.config-shell/zsh/variables.zsh

source $HOME/.config-shell/functions.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  source $HOME/.config-shell/nvm.sh
else
  source $HOME/.config-shell/zsh/shopify.zsh
fi

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

source $HOME/.config-shell/zsh/options.zsh

# Initialize Starship prompt
if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

source $HOME/.config-shell/aliases.sh
source $HOME/.config-shell/zsh/aliases.zsh

source $HOME/.config-shell/zsh/man-pages.zsh

envConfirmation "ZSH"

# Added by Shopify

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () {
  source /opt/dev/sh/chruby/chruby.sh; chruby "$@";
}

if [ -e /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh ];
  then . /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh;
fi

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
