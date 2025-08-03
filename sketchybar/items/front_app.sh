#!/bin/bash

# Create the Item
front_app=(
	# Scripts
	script="$PLUGINS_DIR/front_app.sh"

	# Colors
	background.color=$COLOR_BLACK_BRIGHT
	label.color=$COLOR_RED
	background.border_color=$COLOR_MAGENTA

	# Core
	background.border_width=3
	width=dynamic
	label.padding_left=30
	label.padding_right=30
	background.corner_radius=50
	background.height=30
	align=center

	# Update Frequency
	update_freq=60
)

# Add Items to Sketchybar
sketchybar --add item front_app_label left \
	--set front_app_label "${front_app[@]}" \
	--subscribe front_app_label front_app_switched
