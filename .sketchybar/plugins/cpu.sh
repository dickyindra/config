#!/bin/bash

source "$CONFIG_DIR/colors.sh"

CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
CPU_INFO=$(ps -eo pcpu,user)
CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")

CPU_PERCENT="$(echo "$CPU_SYS $CPU_USER" | awk '{printf "%.0f\n", ($1 + $2)*100}')"

# Determine the color based on CPU usage
if [ "$CPU_PERCENT" -ge 75 ]; then
    COLOR=$RED  # High CPU usage
elif [ "$CPU_PERCENT" -ge 50 ]; then
    COLOR=$YELLOW  # Moderate CPU usage
else
    COLOR=$WHITE  # Low CPU usage
fi

sketchybar --set $NAME icon= icon.color="$COLOR" label="$CPU_PERCENT%" label.color="$COLOR"