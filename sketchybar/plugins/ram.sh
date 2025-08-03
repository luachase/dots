#!/bin/bash

# Import the Icons
source "$HOME/.config/sketchybar/icons.sh"

# RAM
iagesize=$(sysctl -n hw.pagesize)
vm_stat_output=$(vm_stat)

get_pages() {
	echo "$vm_stat_output" | awk "/$1/ {print \$NF}" | sed 's/\.//'
}

active=$(get_pages "Pages active")
wired=$(get_pages "Pages wired down")

used_pages=$((active + wired))
used_mem=$((used_pages * pagesize))
total_mem=$(sysctl -n hw.memsize)

CURRENT_PERCENT=$(awk "BEGIN {printf \"%.0f\", 100 * $used_mem / $total_mem}")

if [[ -n "$CURRENT_PERCENT" ]]; then
	case $CURRENT_PERCENT in
	100)
		RAM_USAGE=${ICONS_RAM[4]}
		;;
	8[0-9])
		RAM_USAGE=${ICONS_RAM[3]}
		;;
	6[0-9])
		RAM_USAGE=${ICONS_RAM[2]}
		;;
	4[0-9])
		RAM_USAGE=${ICONS_RAM[1]}
		;;
	2[0-9])
		RAM_USAGE=${ICONS_RAM[0]}
		;;
	*)
		RAM_USAGE=${ICONS_RAM[0]}
		;;
	esac
fi

sketchybar --set "$NAME" icon="${RAM_USAGE}" label="${CURRENT_PERCENT}%"
