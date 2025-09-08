#!/bin/bash

input=$(kb_status_icon)
color_code=$(echo "$input" | sed 's/\^c#\([[:xdigit:]]\{6\}\)\^.*/#\1/')
icon=$(echo "$input" | sed 's/\^c#[[:xdigit:]]\{6\}\^\(.*\)/\1/')

echo "<span foreground='$color_code'>$icon</span>"
