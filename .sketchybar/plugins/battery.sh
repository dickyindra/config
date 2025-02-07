#!/bin/sh

source $CONFIG_DIR/colors.sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"
COLOR=$WHITE

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) 
    ICON=""
  ;;
  [6-8][0-9]) 
    ICON=""
  ;;
  [3-5][0-9]) 
    ICON=""
  ;;
  [1-2][0-9]) 
    ICON=""
    COLOR=$RED
  ;;
  *) 
    ICON=""
    COLOR=$RED
esac

if [[ "$CHARGING" != "" ]]; then
  ICON=""
  COLOR=$GREEN
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" label="${PERCENTAGE}%" label.color="$COLOR"
