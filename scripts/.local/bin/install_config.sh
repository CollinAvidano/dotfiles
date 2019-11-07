#!/bin/bash

## GNU stow
stow git
stow spacemacs
stow zsh

## Setup tap for X11
#sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
#Section "InputClass"
#        Identifier "touchpad"
#        MatchIsTouchpad "on"
#        Driver "libinput"
#        Option "Tapping" "on"
#EndSection
# install packages
apt-get update -y
apt-get install $(grep -vE "^\s*#" packages.txt | tr "\n" " ") -y
if [ $? -ne 0 ]; then
	echo "apt-get install of gfm's packages failed. QUITTING."
	exit
fi
EOF
