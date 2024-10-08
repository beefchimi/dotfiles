# `~/.profile`: executed by the command interpreter for login shells.
# This file will not be read by bash(1) if:
# neither `~/.bash_profile` or `~/.bash_login` exists.
# See `/usr/share/doc/bash/examples/startup-files` for examples.
# The files are located in the bash-doc package.

# The default umask is set in `/etc/profile`;
# for setting the umask for ssh logins,
# install and configure the libpam-umask package.
# umask 022

# If the current shell is running Bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
  fi
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

# Added by Rust installation
# . "$HOME/.cargo/env"
