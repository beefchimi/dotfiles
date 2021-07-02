###
### Bash Config

if [[ $DESKTOP_SESSION == "zorin" ]]; then
  . $HOME/.config-bash/linux.bash
  . $HOME/.config-bash/nvm.bash
else
  . $HOME/.config-bash/shopify.bash
fi

. $HOME/.config-bash/aliases.bash
. $HOME/.config-bash/variables.bash

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
