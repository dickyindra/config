#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.state')"
if [ "$STATE" = "playing" ]; then
    MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"

    ICON=""
    
    sketchybar --set $NAME label="$MEDIA" icon="$ICON" drawing=on
else
  sketchybar --set $NAME drawing=off
fi