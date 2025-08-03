#!/bin/bash

# Create the Item
battery=(
	# Scripts
	script="$PLUGINS_DIR/battery.sh"

	# Colors
	icon.color=$COLOR_DEFAULT
	label.color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT
	background.border_width=3
	background.border_color=$COLOR_DEFAULT

	# Core
	background.border_width=3
	width=80
	align=center
	label.padding_left=5
	icon.padding_left=1
	background.corner_radius=50
	background.height=30

	# Update Frequency
	update_freq=120
)

# Add the Item to the Bar
sketchybar --add item battery right \
	--set battery "${battery[@]}" \
	--subscribe battery system_woke power_source_change
