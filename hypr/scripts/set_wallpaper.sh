#!/bin/bash

# Define the directory containing your pictures
PICTURE_DIR="$HOME/Files/Background"

# Get a random picture from the directory
CHOSEN_PIC=$(ls "$PICTURE_DIR" | shuf -n 1)

killall swaybg

# Set the selected picture as the background
swaybg -i "$PICTURE_DIR/$CHOSEN_PIC"

