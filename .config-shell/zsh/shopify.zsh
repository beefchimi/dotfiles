###
### Shopify
### This file can likely be moved to .config-shell

# Load Shopify dev
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

# Added by Nix installer
if [ -e /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh ];
  then . /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh;
fi
