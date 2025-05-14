#!/bin/bash

xset r rate 300 40 &

exec slstatus &

nitrogen --restore &

# compositor
picom --config ~/.config/picom.conf &

# sxhkd
# (re)load sxhkd for keybinds
if hash sxhkd >/dev/null 2>&1; then
  pkill sxhkd
  sleep 0.5
  sxhkd -c "$HOME/packages/suckless/sxhkd/sxhkdrc" &
fi

# Notifications
dunst &

# Volume icon
volumeicon &
