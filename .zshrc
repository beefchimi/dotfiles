###
### ZSH Setup

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Theme has no effect while Starship prompt is active
ZSH_THEME='robbyrussell'

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Starship prompt
eval "$(starship init zsh)"

###
### Aliases

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias zshconfig='code ~/.zshrc'
alias ohmyzsh='code ~/.oh-my-zsh'
alias gitcleanpull='git gc && git gc --auto && git prune && git fetch -p && git gc --prune=now && git pull'

# Exa color lists
alias ls='exa --icons'
alias ll='exa -lbGF --icons --git'
alias la='exa -lbhHigUmuSa@ --time-style=long-iso --icons --git --color-scale'
alias lt='exa --icons --tree --level=2'

###
### Man pages (enable color support)

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

###
### NVM (added by nvm-sh)

export NVM_DIR="$HOME/.nvm"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
