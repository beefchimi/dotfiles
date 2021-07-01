###
### Aliases

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gitcleanpull='git gc && git gc --auto && git prune && git fetch -p && git gc --prune=now && git pull'

alias zshconfig='code ~/.zshrc'
alias ohmyzsh='code ~/.oh-my-zsh'

# Shopify

alias brewery='brew update && brew upgrade && brew cleanup'
alias devosw='dev cd shopify && git pull && dev cd web && git pull && dev cd online-store-web'

# Exa color lists

alias ls='exa --icons'
alias ll='exa -lbGF --icons --git'
alias la='exa -lbhHigUmuSa@ --time-style=long-iso --icons --git --color-scale'
alias lt='exa --icons --tree --level=2'
