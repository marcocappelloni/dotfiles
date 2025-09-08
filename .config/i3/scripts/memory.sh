#!/bin/bash
# In your ~/.local/bin/click_block.sh script

# Run the color script and capture its output
CLICK_COLOR=$(get_xresource_color "color4")

# Used RAM in megabyte
used=$(free -mt | awk '/^Total:/ {print $3}')
# Total RAM
total=$(free -mt | awk '/^Total:/ {print $2}')

percentage=$((used * 100 / total))

echo "<span foreground='$CLICK_COLOR'>RAM: $((percentage))%</span>"
