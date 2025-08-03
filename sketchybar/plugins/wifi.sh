#!/bin/bash

# Import the Colors and Icons
source "$HOME/.config/sketchybar/colors.sh"
source "$HOME/.config/sketchybar/icons.sh"

# Wi-Fi
WIFI=$(ipconfig getsummary en0 | awk -F ' SSID : ' '/ SSID : / {print $2}')

if [[ -n "$WIFI" ]]; then
	COLOR=$COLOR_BLUE_BRIGHT
	ICON=$ICON_WIFI_ON
	LABEL=""
else
	COLOR=$COLOR_DEFAULT
	ICON=$ICON_WIFI_OFF
	LABEL=""
fi

sketchybar --set "$NAME" icon="$ICON" label="$LABEL"
