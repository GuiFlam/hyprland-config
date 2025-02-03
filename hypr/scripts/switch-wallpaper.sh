#!/bin/bash

# Check if the user provided an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 path/to/wallpaper.jpg"
  exit 1
fi

# The new wallpaper path provided as an argument
NEW_WALLPAPER=$1

# Path to your hyprpaper.conf file
CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"
HYPRLOCK_FILE="$HOME/.config/hypr/hyprlock.conf"

# Validate that the file exists
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Error: Configuration file $CONFIG_FILE does not exist."
  exit 1
fi

# Update the 'preload' and 'wallpaper' entries in the file
sed -i -E "s|^preload = .*|preload = ${NEW_WALLPAPER}|g; s|^wallpaper = , .*|wallpaper = , ${NEW_WALLPAPER}|g" "$CONFIG_FILE"

#sed -i -E "s|^path = .*|path = ${NEW_WALLPAPER}|g" "$HYPRLOCK_FILE"
sed -i -E "s|^\s*path=.*|path=${NEW_WALLPAPER}|g" "$HYPRLOCK_FILE"



# Confirm the change
echo "Wallpaper updated to: $NEW_WALLPAPER"

# Optional: Reload Hyprland or Hyprpaper to apply changes
#hyprctl reload >> /dev/null # Uncomment this if Hyprland/Hyprpaper needs reloading

~/.config/hypr/scripts/launch-hyprpaper.sh >> /dev/null  &

wal -i $NEW_WALLPAPER >> /dev/null

killall waybar
waybar >> /dev/null  &
