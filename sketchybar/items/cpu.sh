#!/bin/bash

# Create the Item
cpu=(
	# Scripts
	script="$PLUGINS_DIR/cpu.sh"
	click_script="osascript -e 'tell application \"Activity Monitor\" to activate'"

	# Colors

	# Core
	width=70
	label.padding_left=3
	align=center

	# Update Frequency
	update_freq=60
)

# Add the Item to the Bar
sketchybar --add item cpu left \
	--set cpu "${cpu[@]}"
