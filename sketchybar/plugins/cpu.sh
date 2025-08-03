#!/bin/bash

# Import the Icons
source "$HOME/.config/sketchybar/icons.sh"

# CPU
sketchybar --set $NAME icon=$ICON_CPU label=$(top -l 2 | grep -E "^CPU" | tail -1 | awk '{ print int($3 + $5)"%" }')
