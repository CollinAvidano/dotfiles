#!/bin/bash

set -e

INIT_USER=$(whoami);

# prompt for root
[ "$INIT_USER" != "root" ] && exec sudo -- "$0" $INIT_USER "$@"

INIT_USER=$1

echo "Will install dotfiles for $INIT_USER"

# install packages
apt-get update -y
apt-get install $(grep -vE "^\s*#" packages.txt | tr "\n" " ") -y
if [ $? -ne 0 ]; then
	echo "apt-get install of gfm's packages failed. QUITTING."
	exit
fi

################################################
# ZSH Install
################################################
if [ `grep -c "$INIT_USER" /etc/passwd` -eq 0 ]; then
	echo "Unable to change shell. $INIT_USER not found in local user registery."
	echo "Is the machine on directory services? Set atl init cmd in gnome-terminal or talk to the sysadmin."
else
	# set Zsh default sh
	chsh -s $(which zsh) $INIT_USER
fi



# grab oh-my-zsh
if [ -d "/home/$INIT_USER/.oh-my-zsh" ]; then
	git --git-dir=/home/$INIT_USER/.oh-my-zsh/.git status > /dev/null
	if [ $? -ne 0 ]; then
		echo "Oh-My-Zsh exists but the repo is in an invalid state."
		echo "Will not clone."
	fi
else
	echo "No Oh-My-Zsh folder was found. Will run RR inst."
	wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | bash -s - --unattended
	git clone https://github.com/bhilburn/powerlevel9k.git /home/$INIT_USER/.oh-my-zsh/custom/themes/powerlevel9k
	chown -R $INIT_USER:$INIT_USER /home/$INIT_USER/.oh-my-zsh
	chown $INIT_USER:$INIT_USER /home/$INIT_USER/.zshrc
	if [ -f /home/$INIT_USER/.zsh_history ]; then
		chown $INIT_USER:$INIT_USER /home/$INIT_USER/.zsh_history
	fi

	# restore zshrc
	if [ -f $HOME/.zshrc.pre-oh-my-zsh ]; then
		mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
	fi

	echo "Will perform one time install of powerline fonts."
	git clone https://github.com/powerline/fonts.git --depth=1
	cd fonts
	./install.sh
	su $INIT_USER -c ./install.sh
	cd ..
	rm -rf fonts

	echo "Will perform one time install of nerd font glyphs."
	git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
	cd nerd-fonts
	./install.sh
	su $INIT_USER -c ./install.sh
	cd ..
	rm -rf nerd-fonts
fi


################################################
# Decrap directories
################################################
for SRC in `$HOME -depth`
do
    DST=`dirname "${SRC}"`/`basename "${SRC}" | tr '[A-Z]' '[a-z]'`
    if [ "${SRC}" != "${DST}" ]
    then
        [ ! -e "${DST}" ] && mv -T "${SRC}" "${DST}" || echo "${SRC} was not renamed"
    fi
done


alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config submodule update --init --recursive


################################################
# Install Arc Theme
################################################
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

#Apply theme
./apply-theme.sh


################################################
# Install I3 Gaps
################################################
cd external/i3gaps/i3
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make install
cd ..
cd ../../..




################################################
# Hardware Setup
################################################
# cp kern_key_map.service /etc/systemd/system/
# systemctl daemon-reload
# systemctl enable kern_key_map

# this should probably be more robust, and generate
# a device specific hwdb file and disable the remap
# service if necessary
# if [ -d "/lib/udev/hwdb.d" ]; then
# 	OUTPUT_FILE="./92-keyboard-rebind.hwdb"
# 	./gen_usbkb_rebind.sh $OUTPUT_FILE rebind.conf


# 	cp $OUTPUT_FILE /lib/udev/hwdb.d
# 	echo "Installed gen keyboard rebinding"

# 	echo "Updating hwdb..."
# 	udevadm hwdb --update
# 	systemd-hwdb update

# 	echo "Triggering udevadm db reload..."
# 	udevadm trigger --sysname-match="event*"

# 	rm $OUTPUT_FILE
# else
# 	echo "No udev hwdb."
# fi


## Setup tap for X11
#sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
#Section "InputClass"
#        Identifier "touchpad"
#        MatchIsTouchpad "on"
#        Driver "libinput"
#        Option "Tapping" "on"
#EndSection



################################################
# Spacemacs
################################################
git clone https://github.com/bhilburn/powerlevel9k.git /home/$INIT_USER/.oh-my-zsh/custom/themes/powerlevel9k

echo "Applying user level configs..."
su $INIT_USER -c ./user-install.sh

echo "Setup complete."
