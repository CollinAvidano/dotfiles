#!/bin/bash

# Get out of town if something errors
set -e

HDMI_STATUS=$(/bin/cat /sys/class/drm/card0/card0-HDMI-A-1/status)

if [[ "$HDMI_STATUS" == "connected" ]]; then
    /usr/bin/xrandr --output HDMI1 --auto --left-of eDP1
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
else 
    /usr/bin/xrandr --output HDMI1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"	
    exit
fi
