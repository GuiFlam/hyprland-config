#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/Misc/Wallpapers"

# Select a random file from the directory
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Check if a file was selected
if [ -n "$RANDOM_WALLPAPER" ]; then
    # Run the switch-wallpaper command with the chosen wallpaper
    ~/.config/hypr/scripts/switch-wallpaper.sh "$RANDOM_WALLPAPER"
    echo "Wallpaper set to: $RANDOM_WALLPAPER"
else
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

