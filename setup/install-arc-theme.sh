#!/bin/bash

#Install Arc theme
cd external/arc-theme
./autogen.sh --prefix=/usr
make install
cd ../..


#Install Arc icons
cd external/arcicon/arc-icon-theme
./autogen.sh --prefix /usr
make install
cd ../../..


# load gnome terminal theme
dconf load /org/gnome/terminal/ < ~/.dotfiles/cfg/.gnome_terminal

# stop nautilius from glitching i3
gsettings set org.gnome.desktop.background show-desktop-icons false

# apply themes
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Darker"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Darker"
gsettings set org.gnome.desktop.interface gtk-color-scheme "Arc-Darker"
gsettings set org.gnome.desktop.interface icon-theme "Arc"
# TODO Set theme font
