# Import the Plugins Directory and Assign the Path to a Variable
PLUGINS_DIR="$HOME/.config/sketchybar/plugins"

# Import the Items Directory and Assign the Path to a Variable
ITEMS_DIR="$HOME/.config/sketchybar/items"

# Import the Right Items and Add Separators
source "$ITEMS_DIR/wifi.sh"

sketchybar --add item seperator.r2 right --set seperator.r2 padding_left=2 padding_right=2 background.drawing=off icon.drawing=off label.drawing=off

source "$ITEMS_DIR/date_and_time.sh"

sketchybar --add item seperator.r3 right --set seperator.r3 padding_left=2 padding_right=2 background.drawing=off icon.drawing=off label.drawing=off

source "$ITEMS_DIR/volume.sh"

sketchybar --add item seperator.r4 right --set seperator.r4 padding_left=2 padding_right=2 background.drawing=off icon.drawing=off label.drawing=off

source "$ITEMS_DIR/battery.sh"
