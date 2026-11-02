# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes latex if it exists
if [ -d "/usr/local/texlive/2025/bin/x86_64-linux" ]; then
  PATH="/usr/local/texlive/2025/bin/x86_64-linux:$PATH"
fi

# export CAPACITOR_ANDROID_STUDIO_PATH="/snap/bin/android-studio"
# export ANDROID_SDK_ROOT="/home/maky/Android/Sdk"

# set PATH so it includes the Android Sdk if it exists
if [ -d "$HOME/Android/Sdk" ]; then
  PATH="$PATH:$HOME/Android/Sdk/emulator"
  PATH="$PATH:$HOME/Android/Sdk/platform-tools"
fi

# set PATH so it includes the Flutter binaries if it exists
if [ -d "$HOME/packages/flutter/flutter" ]; then
  PATH="$PATH:$HOME/packages/flutter/flutter/bin"
  export CHROME_EXECUTABLE=/snap/bin/brave
fi
