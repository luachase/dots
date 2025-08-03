# Import the Plugins Directory and Assign the Path to a Variable
PLUGINS_DIR="$HOME/.config/sketchybar/plugins"

# Import the Items Directory and Assign the Path to a Variable
ITEMS_DIR="$HOME/.config/sketchybar/items"

# Import the Left Items and Add Seperators
source "$ITEMS_DIR/logo.sh"

sketchybar --add item seperator.r0 left --set seperator.r0 padding_left=2 padding_right=2 background.drawing=off icon.drawing=off label.drawing=off

source "$ITEMS_DIR/ram.sh"
source "$ITEMS_DIR/disk.sh"
source "$ITEMS_DIR/cpu.sh"

sketchybar --add item seperator.r1 left --set seperator.r1 padding_left=2 padding_right=2 background.drawing=off icon.drawing=off label.drawing=off

source "$ITEMS_DIR/front_app.sh"

# Group the RAM, DISK, and CPU Items Together
sketchybar --add bracket itemsl ram disk cpu \
	--set itemsl background.color=$COLOR_BLACK_BRIGHT \
	background.border_width=3 \
	background.border_color=$COLOR_DEFAULT \
	background.corner_radius=15 \
	background.height=30
