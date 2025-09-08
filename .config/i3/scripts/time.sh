#!/bin/bash
# In your ~/.local/bin/click_block.sh script

# Run the color script and capture its output
CLICK_COLOR=$(get_xresource_color "color1")

echo "<span foreground='$CLICK_COLOR'>$(date '+%a %d %b %H:%M')</span>"
