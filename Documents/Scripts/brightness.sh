#!/bin/bash

# Get the current brightness value
current_brightness=$(light -G)

# Define the step size for brightness adjustment
step=5

# Check the direction of scrolling
if [ "$1" = "up" ]; then
    # Increase brightness
    light -A $step
elif [ "$1" = "down" ]; then
    # Decrease brightness
    light -U $step
fi

# Output the updated brightness value
echo "$(light -G)"

