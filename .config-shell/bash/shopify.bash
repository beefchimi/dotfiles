###
### Shopify
### This file can likely be moved to .config-shell

# Load Shopify dev,
# but only if present and the shell is interactive.
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

# May also require sourcing Nix profile

# Shopify chruby setup
[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }
