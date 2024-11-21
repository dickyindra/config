source "$CONFIG_DIR/colors.sh"

##### Bar Appearance #####
# Configuring the general appearance of the bar.
# These are only some of the options available. For all options see:
# https://felixkratz.github.io/SketchyBar/config/bar
# If you are looking for other colors, see the color picker:
# https://felixkratz.github.io/SketchyBar/config/tricks#color-picker
sketchybar --bar position=top height=40 blur_radius=0 color=0x40000000

##### Changing Defaults #####
# We now change some default values, which are applied to all further items.
# For a full list of all available item properties see:
# https://felixkratz.github.io/SketchyBar/config/items
default=(
  padding_left=5
  padding_right=5
  icon.font="Hack Nerd Font:Bold:14.0"
  label.font="$FONT:Bold:14.0"
  background.color=$ITEM_BACKGROUND_COLOR
  background.corner_radius=4
  background.height=24
  icon.color=0xffffffff
  label.color=0xffffffff
  icon.padding_left=8
  icon.padding_right=4
  label.padding_left=4
  label.padding_right=8
)

sketchybar --default "${default[@]}"