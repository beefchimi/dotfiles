###
### Variables
### I may declare/redefine some environment variables elsewhere

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Add Legendary executable: https://github.com/derrod/legendary
# Necessary as `.profile` does not appear to be read by ZSH
export PATH="$HOME/.local/bin:$PATH"

# Define a custom ZSH cache directory
export ZSH_CACHE_DIR="$HOME/.cache/zsh"

# Create a cache folder if it does not already exist
if [ ! -d $ZSH_CACHE_DIR ]; then
  mkdir -p $ZSH_CACHE_DIR
fi

# Define a custom path for ZSH history
export HISTFILE=$ZSH_CACHE_DIR/.zsh_history

# If you want to unify your ZSH history, follow these instructions:
# https://community.jamf.com/t5/jamf-pro/unify-your-macos-terminal-command-history/td-p/227102
# https://superuser.com/questions/1610587/disable-zsh-session-folder-completely

# Define a custom file for command completion
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/zcompdump-$HOST-$ZSH_VERSION"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Theme has no effect while Starship prompt is active
# export ZSH_THEME="robbyrussell"
