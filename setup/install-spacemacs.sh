#!/bin/zsh

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt install emacs26
git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
if [-d $HOME/.dotfiles ]; then
    cd $HOME/.dotfiles/
    stow spacemacs
fi
