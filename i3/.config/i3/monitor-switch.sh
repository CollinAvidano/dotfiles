#!/bin/bash

# Get out of town if something errors
set -e

EXTERNAL_DISPLAY=HDMI1
INTERNAL_DISPLAY=eDP1

# Get info on the monitors
eDP_STATUS=$(/bin/cat /sys/class/drm/card0/card0-eDP-1/status)
HDMI_STATUS=$(/bin/cat /sys/class/drm/card0/card0-HDMI-A-1/status)

eDP_ENABLED=$(</sys/class/drm/card0/card0-eDP-1/enabled)
HDMI_STATUS=$(/bin/cat /sys/class/drm/card0/card0-HDMI-A-1/enabled)

# Check to see if our state log exists
if [ ! -f /tmp/monitor ]; then
	touch /tmp/monitor
	STATE=5
else
	STATE=$(</tmp/monitor)
fi

# The state log has the NEXT state to go to in it

# If monitors are disconnected, stay in state 1
if [[ "disconnected" == "$HDMI_STATUS" ]]; then
	STATE=1
fi

case $STATE in
	1)
	# eDP is on, projectors not connected
	/usr/bin/xrandr --output $INTERNAL_DISPLAY --auto
	STATE=2
	;;
	2)
	# eDP is on, projectors are connected but inactive
    /usr/bin/xrandr --output $INTERNAL_DISPLAY --auto --output $EXTERNAL_DISPLAY --off
    /usr/bin/notify-send -t 5000 --urgency=low "Graphics Update" "Switched to off"
	STATE=3
	;;
	3)
	# eDP is on, projectors are mirroring
	if [ "connected" == "$HDMI_STATUS" ]; then
		/usr/bin/xrandr --output $INTERNAL_DISPLAY --auto --output $EXTERNAL_DISPLAY --auto
		TYPE="HDMI"
	fi
	/usr/bin/notify-send -t 5000 --urgency=low "Graphics Update" "Switched to mirroring"
	STATE=4
	;;
	4)
	# eDP is on, projectors are extending
	if [ "connected" == "$HDMI_STATUS" ]; then
		/usr/bin/xrandr --output $INTERNAL_DISPLAY --auto --output $EXTERNAL_DISPLAY --auto --left-of $INTERNAL_DISPLAY
		TYPE="HDMI"
	fi
	/usr/bin/notify-send -t 5000 --urgency=low "Graphics Update" "Switched to extending"
	STATE=2
	;;
	*)
	# Unknown state, assume we're in 1
	STATE=1
esac

echo $STATE > /tmp/monitor
