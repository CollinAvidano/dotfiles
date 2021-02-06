#!/bin/bash
WHEREAMI=$(cat /tmp/whereami)
gnome-terminal --working-directory="$WHEREAMI"
