#!/bin/bash

CONFIG_DIR="$HOME/.config/kanshi"
DEFAULT_CONFIG="$CONFIG_DIR/config"
GAMING_CONFIG="$CONFIG_DIR/config-gaming"
STATE_FILE="$CONFIG_DIR/state.txt"

content=$(cat $STATE_FILE)

pkill kanshi

if [ $content == "default" ]; then 
    echo "Equal"
else
    echo "Not equal"
fi

