#!/bin/bash

# Kill picom
pkill picom

# Wait for picom to be killed
while pgrep -x picom > /dev/null; do
    sleep 1
done

# Launch picom
picom --config ~/.config/picom.conf &
