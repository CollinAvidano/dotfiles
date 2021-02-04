#!bin/bash
if rfkill list bluetooth | grep -q 'yes$'; then
    rfkill block bluetooth
else
    rfkill unblock bluetooth
fi
