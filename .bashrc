# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

# GPG Key
# export GPG_TTY=$(tty)

# Aliases
# alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Starship prompt
# eval "$(starship init bash)"
