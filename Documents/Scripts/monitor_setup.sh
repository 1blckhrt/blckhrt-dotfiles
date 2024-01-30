#!/bin/bash

# Check if an external monitor is connected
if xrandr | grep -q "connected"; then
    # External monitor is connected
    echo "External monitor detected."

    # Enable the external monitor and set it as primary
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output DP-4 --off
    
else
    # No external monitor detected
    echo "No external monitor detected."

    # Enable the internal monitor and set it as primary
    xrandr --output eDP-1 --auto --primary
    # Replace <internal_monitor_name> with the name of your internal monitor

    # Disable any connected external monitors (in case it was previously connected)
    xrandr --output HDMI-1 --off
    # Replace <external_monitor_name> with the name of your external monitor, if you have multiple, you may need to loop through them
fi
