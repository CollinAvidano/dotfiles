#!/bin/bash

# this script should attept to install my favorite packages!

# exit on any error
set -e

# Become root
if [ $UID -ne 0 ]; then
	echo "-- Becoming root"
	exec sudo $0
fi

if command -v apt-get>/dev/null; then
    apt-get install $(sed 's/#.*//;/^$/d' $(dirname $0)/debian_packages.txt)
    exit 0
fi

if command -v pacman>/dev/null; then
    pacman -Sy --needed $(sed 's/#.*//;/^$/d' $(dirname $0)/arch_packages.txt)
    exit 0
fi

echo Package list/manager not implemented!
exit 1
