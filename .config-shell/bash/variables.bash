###
### Variables

# Define a custom Bash cache directory
export BASH_CACHE_DIR="$HOME/.cache/bash"

# Create a cache folder if it does not already exist
if [ ! -d $BASH_CACHE_DIR ]; then
  mkdir -p $BASH_CACHE_DIR
fi

# Define a custom path for Bash history
export HISTFILE=$BASH_CACHE_DIR/.bash_history
