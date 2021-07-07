###
### Shared Aliases

alias dotf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias gitcleanpull="git gc && git gc --auto && git prune && git fetch -p && git gc --prune=now && git pull"

# Exa color lists
if command -v exa &> /dev/null; then
  alias ls="exa --icons"
  alias ll="exa -lbGF --icons --git"
  alias la="exa -lbhHigUmuSa@ --time-style=long-iso --icons --git --color-scale"
  alias lt="exa --icons --tree --level=2"
fi
