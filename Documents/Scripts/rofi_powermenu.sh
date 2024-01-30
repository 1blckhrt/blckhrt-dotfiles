#!/bin/bash
echo -e "Logout\nReboot\nShutdown" | rofi -dmenu -i -p "Powermenu" -lines 3 | while read choice; do
    case $choice in
        Logout) ~/Documents/Scripts/logout.sh;;
        Reboot) ~/Documents/Scripts/reboot.sh;;
        Shutdown) ~/Documents/Scripts/shutdown.sh;;
    esac
done
