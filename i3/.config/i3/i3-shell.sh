#!/bin/bash
WHEREAMI=$(cat /tmp/whereami)

kitty $WHEREAMI
#gnome-terminal --working-directory="$WHEREAMI"
