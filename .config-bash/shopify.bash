###
### Shopify

# Load Shopify dev,
# but only if present and the shell is interactive.
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

# May also require sourcing Nix profile
