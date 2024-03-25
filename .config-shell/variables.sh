###
### Shared Variables
### I may declare/redefine some environment variables elsewhere

# GPG Key
export GPG_TTY=$(tty)

# Dithered block pattern prompt
export PROMPT_DITHER_START="╠█▓▒░"
export PROMPT_DITHER_END="░▒▓█╣"

# Set VSCode as default editor
# export EDITOR="code"

# Set the JAVA_HOME environment variable for Android developlment
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

# Export the Android SDK variables.
# The NDK path may need to be regularly updated.
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="$ANDROID_HOME/ndk/26.2.11394342"
