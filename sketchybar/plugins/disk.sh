#!/bin/bash

# Import the Icons
source "$HOME/.config/sketchybar/icons.sh"

# Disk
sketchybar --set $NAME icon=$ICON_DISK label="$(df -H | awk '$1 == "/dev/disk3s5" { print $4 }')"
