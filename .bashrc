###
### Bash Config

. $HOME/.config-shell/variables.sh

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  . $CONFIG_BASH/linux.bash
  . $CONFIG_SHELL/nvm.sh
else
  . $CONFIG_BASH/shopify.bash
fi

. $CONFIG_SHELL/aliases.sh

# Starship Prompt
eval "$(starship init bash)"

# Environment check
if [[ $DESKTOP_SESSION == "zorin" ]]; then
  echo "$DITHER_PROMPT ⩓ [Bash] Zorin OS $DITHER_PROMPT_REVERSE"
elif [[ $SPIN ]]; then
  echo "$DITHER_PROMPT ꩜ [Bash] Spin Shell $DITHER_PROMPT_REVERSE"
else
  echo "$DITHER_PROMPT  [Bash] Mac OS $DITHER_PROMPT_REVERSE"
fi
