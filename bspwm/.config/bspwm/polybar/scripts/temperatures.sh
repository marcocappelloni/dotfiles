#!/bin/bash

input=$(temperatures_icon)
color_code=$(echo "$input" | sed 's/\^c#\([[:xdigit:]]\{6\}\)\^.*/#\1/')
icon=$(echo "$input" | sed 's/\^c#[[:xdigit:]]\{6\}\^\(.*\)/\1/')

echo "%{F$color_code}$icon%{F-}"
