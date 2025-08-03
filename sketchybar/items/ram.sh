#!/bin/bash

# Create the Item
ram=(
	# Scripts
	script="$HOME/.config/sketchybar/plugins/ram.sh"
	click_script="osascript -e 'tell application \"Activity Monitor\" to activate'"

	# Colors
	icon.color=$COLOR_DEFAULT
	label.color=$COLOR_DEFAULT

	# Core
	width=70
	align=center
	label.padding_left=3

	# Update Frequency
	update_freq=120
)

# Add the Item to the Bar
sketchybar --add item ram left \
	--set ram "${ram[@]}"
