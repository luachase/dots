#!/bin/bash

# Import the Colors
source "$HOME/.config/sketchybar/colors.sh"

# General Appearance of the Bar
bar=(
	color=$COLOR_TRANSPARENT
	border_color=$COLOR_TRANSPARENT
	height=40
	topmost=window
	position=top
	sticky=on
	corner_radius=0
	y_offset=3
)
sketchybar --bar "${bar[@]}"
