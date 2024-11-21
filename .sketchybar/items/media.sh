#!/bin/bash

sketchybar --add item media q \
           --set media label.color=$WHITE \
                       label.max_chars=20 \
                       padding_right=30 \
                       scroll_texts=on \
                       script="$PLUGIN_DIR/media.sh" \
                       click_script="$PLUGIN_DIR/media_click.sh" \
           --subscribe media media_change