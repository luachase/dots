#!/bin/bash

# Create the Item
wifi=(
	# Scripts
	script="$PLUGINS_DIR/wifi.sh"
	click_script="open /System/Library/PreferencePanes/Network.prefPane"

	# Colors
	icon.color=$COLOR_DEFAULT
	label.color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT
	background.border_color=$COLOR_DEFAULT

	# Core
	background.border_width=3
	background.corner_radius=50
	background.height=30
	width=30
	align=center
	icon.padding_left=3

	# Update Frequency
	update_freq=60
)

# Add the Item to the Bar
sketchybar --add item wifi right \
	--set wifi "${wifi[@]}" \
	--subscribe wifi wifi_change
