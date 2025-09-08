#!/bin/bash
# In your ~/.local/bin/click_block.sh script

# Run the color script and capture its output
CLICK_COLOR=$(get_xresource_color "color4")

# Home percent Used
percentage=$(df -h / | awk '/\/$/{print $5}')

echo "<span foreground='$CLICK_COLOR'>ROOT: $percentage</span>"
