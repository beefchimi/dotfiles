###
### Shopify
### This file can likely be moved to .config-shell

# Load Shopify dev
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

# Added by Nix installer
if [ -e /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh ];
  then . /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh;
fi

# Shopify chruby setup
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
