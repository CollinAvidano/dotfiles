#!/bin/bash

if grep -qs '/mnt/foo ' /proc/mounts; then
    echo "It's mounted."
else
    echo "It's not mounted."
fi

exit
