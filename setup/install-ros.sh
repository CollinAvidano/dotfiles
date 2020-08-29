#!/bin/zsh
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -

sudo apt update
sudo apt install ros-melodic-desktop-full python-catkin-tools

echo "export CATKIN_WORKSPACE=/"$HOME"/"$USER"/catkin_ws" >> $HOME/.zshenv
source $HOME/.zshenv
echo "source "/opt/ros/melodic/setup.zsh"" >> $HOME/.zshrc
echo "source "$CATKIN_WORKSPACE/devel/setup.zsh"" >> $HOME/.zshrc

cd $CATKIN_WORKSPACE && mkdir -p catkin_ws/src && catkin init
