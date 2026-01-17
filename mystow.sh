#!/bin/bash

PACKAGES_TO_STOW=(
  #"alacritty"
  "bash"
  "bat"
  "bspwm"
  "dwm"
  "fastfetch"
  "ghostty"
  #"helix"
  "i3"
  "kitty"
  #"nvim"
  "picom"
  #"polybar"
  #"qtile"
  #"redshift"
  "rofi"
  "rofi_list"
  "system"
  "yazi"
)

for package in ${PACKAGES_TO_STOW[*]}; do
  echo "   -> Stowing $package"
  stow -v --adopt "$package"
done

echo "Do you want to do the restore of the git repository? (Y/N)"
read answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
  git restore .
fi
