if [ -v $ZSH_VERSION ]; then
  source $HOME/.config-shell/functions/utilities.sh
  source $HOME/.config-shell/functions/launch.sh
  source $HOME/.config-shell/functions/general.sh
else
  . $HOME/.config-shell/functions/utilities.sh
  . $HOME/.config-shell/functions/launch.sh
  . $HOME/.config-shell/functions/general.sh
fi


