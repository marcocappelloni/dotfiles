#!/bin/bash

input=$(temperatures_icon)
color_code=$(echo "$input" | sed 's/\^c#\([[:xdigit:]]\{6\}\)\^.*/#\1/')
icon=$(echo "$input" | sed 's/\^c#[[:xdigit:]]\{6\}\^\(.*\)/\1/')
trimmed_icon=$(echo "$icon" | tr -d '[:space:]')

echo "%{F$color_code}$trimmed_icon%{F-}"
