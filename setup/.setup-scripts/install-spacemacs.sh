#!/bin/zsh

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt install emacs26 
sudo apt install ccls global id-utils exuberant-ctags markdown

git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
if [-d $HOME/.dotfiles ]; then
    cd $HOME/.dotfiles/
    stow spacemacs
fi
