#!/bin/bash

# Check if Polybar is already running
if pgrep -x "polybar" > /dev/null; then
    exit
fi

# Launch Polybar
polybar --config=~/.config/polybar/config.ini hehonix &
