#!/bin/bash

# Create the Item
volume=(
	# Scripts
	script="$PLUGINS_DIR/volume.sh"
	click_script="osascript -e 'set volume output muted not (output muted of (get volume settings))'"

	# Colors
	icon.color=$COLOR_DEFAULT
	label.color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT
	background.border_color=$COLOR_DEFAULT

	# Core
	width=70
	align=center
	label.padding_left=5
	background.padding_left=15
	background.corner_radius=50
	background.height=30
	background.border_width=3

	# Update Frequency
	update_freq=60
)

# Add the Item to the Bar
sketchybar --add item volume right \
	--set volume "${volume[@]}" \
	--subscribe volume volume_change
