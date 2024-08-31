#!/bin/bash

# Ensure the script is executable even if the Hyprland environment variable isn't set
export HYPRLAND_INSTANCE_SIGNATURE=$(grep -oP "(?<=HYPRLAND_INSTANCE_SIGNATURE=).*" /proc/$(pgrep -x Hyprland)/environ 2>/dev/null)

# Check if hyprctl is available
if ! command -v hyprctl &>/dev/null; then
  echo "0"
  exit 1
fi

# Run hyprctl and count floating windows
count=$(hyprctl clients | grep -c "floating: 1")

# Output the count
echo "$count"
