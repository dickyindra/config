sketchybar --add item clock right \
           --set clock update_freq=10 icon= script="$PLUGIN_DIR/clock.sh" click_script="$PLUGIN_DIR/clock_click.sh" \
           --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
           --subscribe volume volume_change