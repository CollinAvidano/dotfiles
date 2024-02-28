#!/bin/bash

# variant that installs nerdfonts as well

# Install zsh
sudo apt install zsh

# think I need to source .zshrc here so its gets custom

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Oh my zsh auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Zoxide and zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
curl -sS https://webinstall.dev/zoxide | bash

# auto suggestion fixes
sudo apt install python3-distutils -y
sudo apt install thefuck -y

# Install nerdfont
sudo curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/SourceCodePro.zip -o /usr/share/fonts/SourceCodePro.zip
cd /usr/share/fonts/
sudo unzip ./SourceCodePro.zip
sudo rm ./SourceCodePro.zip


# THIS IS INCORRECT IF YOU HAVE TO SUDO SO DONT
# remove pre installed dotfiles
cd $HOME
rm -f .zshrc .profile .bashrc .htoprc .vimrc
# stow out
cd $HOME/.dotfiles/
stow zsh gdb git htop shell style-configs tmux x vim ranger rclone

sudo apt install direnv
