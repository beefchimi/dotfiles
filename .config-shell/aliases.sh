###
### Shared Aliases

alias dotf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias gitcleanpull="git gc && git gc --auto && git prune && git fetch -p && git gc --prune=now && git pull"

if [[ $DESKTOP_SESSION != "zorin" ]]; then
  alias brewery="brew update && brew upgrade && brew cleanup -s && brew doctor && brew missing"
fi

# Eza color lists (formerly exa)
if command -v eza &> /dev/null; then
  alias ls="eza --icons"
  alias ll="eza -lbGF --icons --git"
  alias la="eza -lbhHigUmuSa@ --time-style=long-iso --icons --git --color-scale"
  alias lt="eza --icons --tree --level=2"
fi
