#!/bin/bash
# In your ~/.local/bin/click_block.sh script

# Run the color script and capture its output
CLICK_COLOR=$(get_xresource_color "color3")

# Home percent Used
percentage=$(df -h /home | awk '/home$/{print $5}')

echo "<span foreground='$CLICK_COLOR'>HOME: $percentage</span>"
