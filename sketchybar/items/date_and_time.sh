#!/bin/bash

# Create the Item
datetime=(
	# Scripts
	script="$PLUGINS_DIR/date_and_time.sh"
	click_script="osascript -e 'tell application \"Calendar\" to activate'"

	# Colors
	background.color=$COLOR_BLACK_BRIGHT
	background.border_color=$COLOR_DEFAULT

	# Core
	background.border_width=3
	background.corner_radius=50
	background.height=30
	width=200
	align=center

	# Update Frequency
	update_freq=60
)

# Add the Item to the Bar
sketchybar --add item datetime right \
	--set datetime "${datetime[@]}"
