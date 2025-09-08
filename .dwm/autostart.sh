#!/bin/bash

# rotate vertical monitor
# xrandr --output HDMI-A-1 --left-of HDMI-A-0 --auto
# xrandr --output HDMI-A-1 --rotate right --auto --pos 0x0 --output HDMI-A-0 --auto --pos 1080x420 &

# set of commands to disable the screensaver
xset s off
xset -dpms
xset s noblank

# dwm status bar
exec slstatus &

# wallpaper selection
# nitrogen --restore &
#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-fill /home/maky/Pictures/wallpapers/ign_iceAndFire.jpg /home/maky/Pictures/wallpapers/ign_tokyo.jpg &
feh --bg-fill /home/maky/Pictures/wallpapers/ign_iceAndFire.jpg /home/maky/Pictures/wallpapers/Vertical/i2acrw30aeef1.png &

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

# Network Manager
nm-applet &

$HOME/PersonalHome/Scripts/MyApps/dimmer/dimmer_time_check.sh &
