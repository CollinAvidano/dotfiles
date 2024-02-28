#!/bin/bash

# Install nerdfont
sudo curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/SourceCodePro.zip -o /usr/share/fonts/SourceCodePro.zip
cd /usr/share/fonts/
sudo unzip ./SourceCodePro.zip
sudo rm ./SourceCodePro.zip
