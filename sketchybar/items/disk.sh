#!/bin/bash

# Create the Item
disk=(
	# Scripts
	script="$PLUGINS_DIR/disk.sh"
	click_script="osascript -e 'tell application \"Activity Monitor\" to activate'"

	# Colors

	# Core
	width=70
	align=center
	label.padding_left=3

	# Update Frequency
	update_freq=60
)

# Add the Item to the Bar
sketchybar --add item disk left \
	--set disk "${disk[@]}"
