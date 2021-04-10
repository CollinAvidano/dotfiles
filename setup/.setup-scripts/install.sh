#!/bin/bash

set -e

INIT_USER=$(whoami);

# prompt for root
[ "$INIT_USER" != "root" ] && exec sudo -- "$0" $INIT_USER "$@"

INIT_USER=$1

echo "Will install dotfiles for $INIT_USER"

################################################
# PPAs
################################################
# tries to run an apt update and fix any keys that return no pubkey
# sudo apt update | sed -n -e 's/^.*NO_PUBKEY[[:space:]]//p' | xargs -I % sudo apt-key adv --recv-key --keyserver keyserver.ubuntu.com %

################################################
# Packages
################################################
#apt-get update -y
#apt-get install $(grep -vE "^\s*#" packages.txt | tr "\n" " ") -y
#if [ $? -ne 0 ]; then
#	echo "apt-get install of gfm's packages failed. QUITTING."
#	exit
#fi

################################################
# ZSH Install
################################################
#if [ `grep -c "$INIT_USER" /etc/passwd` -eq 0 ]; then
#	echo "Unable to change shell. $INIT_USER not found in local user registery."
#	echo "Is the machine on directory services? Set atl init cmd in gnome-terminal or talk to the sysadmin."
#else
#	# set Zsh default sh
#	chsh -s $(which zsh) $INIT_USER
#fi

## TODO Setup stow for git and for zsh here

# grab oh-my-zsh
#if [ -d "/home/$INIT_USER/.oh-my-zsh" ]; then
#	git --git-dir=/home/$INIT_USER/.oh-my-zsh/.git status > /dev/null
#	if [ $? -ne 0 ]; then
#		echo "Oh-My-Zsh exists but the repo is in an invalid state."
#		echo "Will not clone."
#	fi
#else
#	echo "No Oh-My-Zsh folder was found. Will run RR inst."
#	wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | bash -s - --unattended
#	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
#	chown -R $INIT_USER:$INIT_USER /home/$INIT_USER/.oh-my-zsh
#	chown $INIT_USER:$INIT_USER /home/$INIT_USER/.zshrc
#	if [ -f /home/$INIT_USER/.zsh_history ]; then
#		chown $INIT_USER:$INIT_USER /home/$INIT_USER/.zsh_history
#	fi
#
#	# restore zshrc
#	if [ -f $HOME/.zshrc.pre-oh-my-zsh ]; then
#		mv $HOME/.zshrc.pre-oh-my-zsh $HOME/.zshrc
#	fi

#	echo "Will perform one time install of powerline fonts."
#	git clone https://github.com/powerline/fonts.git --depth=1
#	cd fonts
#	./install.sh
#	su $INIT_USER -c ./install.sh
#	cd ..
#	rm -rf fonts

#	echo "Will perform one time install of nerd font glyphs."
#	git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
#	cd nerd-fonts
#	./install.sh
#	su $INIT_USER -c ./install.sh
#	cd ..
#	rm -rf nerd-fonts
#fi


################################################
# Decrap directories
################################################

#su $INIT_USER -c ./decrap-directories.sh
#
#
#################################################
## Install Arc Theme
#################################################
#
##Apply theme
#./install-arc-theme.sh
#
#################################################
## Install I3 Gaps
#########################################I3
#./install-i3.sh
#
#
#################################################
## Spacemacs
#################################################
#git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


################################################
# Stow 
################################################
cd ../
shopt -s nullglob extglob
array=!(cfg | readme.md)
shopt -u nullglob # Turn off nullglob to make sure it doesn't interfere with anything later
for p in "${array[@]}"
do
    stow --no-folding --adopt $p
done
git checkout . # reset any adopted files essentially doing an overwrite




################################################
# Saleae Logic Analyzer
################################################
curl https://downloads.saleae.com/logic/1.2.18/Logic%201.2.18%20(64-bit).zip -o logic.zip
unzip logic
rm logic.zip
mv logic /opt/logic


################################################
# Eagle
################################################
firefox https://www.autodesk.com/products/eagle/free-download
echo "Download Eagle before preceding"
read -p "Press enter to continue"
sudo mv ~/downloads/Autodesk_EAGLE* /opt/eagle/


################################################
# Cisco Anyconnect
################################################
firefox https://anyc.vpn.gatech.edu/
echo "Download Cisco AnyConnect before preceding"
read -p "Press enter to continue"

################################################
# Libinput
################################################
# Setup tap for X11
sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection


echo "Setup complete."
