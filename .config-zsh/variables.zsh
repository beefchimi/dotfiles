###
### Variables
### I may declare/redefine some environment variables elsewhere

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Add Legendary executable: https://github.com/derrod/legendary
# Necessary as `.profile` does not appear to be read by ZSH
export PATH="$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Theme has no effect while Starship prompt is active
export ZSH_THEME="robbyrussell"