#!/bin/bash

# no nerd font install
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

# remove pre installed dotfiles
cd $HOME
rm -f .zshrc
rm -f .zshenv
# stow out
cd $HOME/.dotfiles/
stow zsh
