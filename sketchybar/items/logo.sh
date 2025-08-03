#!/bin/bash

# Import the Icons and Colors
source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

# Dropdown Menu
POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

# Create the Items
apple_logo=(
	# Scripts
	click_script="$POPUP_CLICK_SCRIPT"

	# Colors
	icon.color="$COLOR_DEFAULT"
	background.color=$COLOR_BLACK_BRIGHT
	background.border_color=$COLOR_DEFAULT

	# Core
	icon="$ICON_LOGO"
	icon.font="Hack Nerd Font:Bold:25"
	icon.padding_left=1
	label.drawing=off
	background.border_width=3
	background.corner_radius=50
	width=40
	background.height=40
	align=center
)

# Create the Items
apple_prefs=(
	# Scripts
	click_script="open -a 'System Preferences'; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_PREFERENCES"
	label="Preferences"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_right=3
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=140
	align=center
	background.height=30

)

apple_activity=(
	# Scripts
	click_script="Ghostty --single-instance -e btop; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_ACTIVITY"
	label="Activity"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_right=3
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=140
	background.height=30
	align=center

)

apple_divider=(
	# Scripts

	# Colors
	background.color=$COLOR_DEFAULT

	# Core
	background.drawing=on
	icon.drawing=off
	label.drawing=off
	background.height=3
	padding_left=7
	padding_right=7
	width=125

)

apple_sleep=(
	# Scripts
	click_script="osascript -e 'tell app \"System Events\" to sleep'; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_SLEEP"
	label="Sleep"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_right=3
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=140
	background.height=30
	align=center
)

apple_reboot=(
	# Scripts
	click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrrst»'; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_REBOOT"
	label="Reboot"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_right=3
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=140
	background.height=30
	align=center
)

apple_shutdown=(
	# Scripts
	click_script="osascript -e 'tell app \"loginwindow\" to «event aevtrsdn»'; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_POWER"
	label="Shutdown"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_right=3
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=140
	background.height=30
	align=center
)

apple_lock=(
	# Scripts
	click_script="osascript -e 'tell application \"System Events\" to keystroke \"q\" using {command down,control down}'; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_LOCK"
	label="Lock Screen"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_right=3
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=140
	background.height=30
	align=center
)

apple_logout=(
	# Scripts
	click_script="osascript -e 'tell application \"System Events\" to keystroke \"q\" using {command down,shift down}'; $POPUP_OFF"

	# Colors
	background.border_color=$COLOR_DEFAULT
	background.color=$COLOR_BLACK_BRIGHT

	# Core
	icon="$ICON_LOGOUT"
	label="Logout"
	icon.font="Hack Nerd Font:Bold:15"
	label.font="Hack Nerd Font:Bold:15"
	icon.padding_left=3
	background.padding_left=20
	background.drawing=on
	background.border_width=3
	background.corner_radius=50
	width=100
	background.height=30
	align=center
)

# Add the Items to the Bar and Dropdown Menu
sketchybar --add item apple.logo left \
	--set apple.logo "${apple_logo[@]}" \
	\
	--add item apple.prefs popup.apple.logo \
	--set apple.prefs "${apple_prefs[@]}" \
	\
	--add item apple.activity popup.apple.logo \
	--set apple.activity "${apple_activity[@]}" \
	\
	--add item apple.divider popup.apple.logo \
	--set apple.divider "${apple_divider[@]}" \
	\
	--add item apple.sleep popup.apple.logo \
	--set apple.sleep "${apple_sleep[@]}" \
	\
	--add item apple.reboot popup.apple.logo \
	--set apple.reboot "${apple_reboot[@]}" \
	\
	--add item apple.shutdown popup.apple.logo \
	--set apple.shutdown "${apple_shutdown[@]}" \
	\
	--add item apple.divider2 popup.apple.logo \
	--set apple.divider2 "${apple_divider[@]}" \
	\
	--add item apple.lock popup.apple.logo \
	--set apple.lock "${apple_lock[@]}" \
	\
	--add item apple.logout popup.apple.logo \
	--set apple.logout "${apple_logout[@]}"
