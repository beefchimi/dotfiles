###
### ZSH Setup

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH='/Users/beefchimi/.oh-my-zsh'

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Set name of the theme to load
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME='robbyrussell'

###
### HyperJS fix for leading percent symbol

unsetopt PROMPT_SP

###
### Code completion

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

###
### Behaviour

# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

###
### Plugins

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

###
### User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# SSH
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Completions
# fpath=(/usr/local/share/zsh-completions $fpath)

###
### Aliases

alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias zshconfig='code ~/.zshrc'
alias ohmyzsh='code ~/.oh-my-zsh'
alias brewery='brew update && brew upgrade && brew cleanup'
alias gitcleanpull='git gc && git gc --auto && git prune && git fetch -p && git gc --prune=now && git pull'
alias osw='dev cd shopify && git pull && dev cd web && git pull && dev cd online-store-web'

###
### Exa aliases

# General use
alias ls='exa --icons'
alias l='exa -lbF --icons --git'
alias ll='exa -lbGF --icons --git'
alias llm='exa -lbGd --icons --git --sort=modified'
alias la='exa -lbhHigUmuSa --time-style=long-iso --icons --git --color-scale'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --icons --git --color-scale'

# Specialty views
alias lS='exa -1 --icons'
alias lt='exa --icons --tree --level=2'

###
### Shopify

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/beefchimi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
