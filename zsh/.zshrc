#I primarily launch zsh as my default shell so this doesnt chain through .bashrc like some others I have seen.

# Profiling code for diagnosing long startup times
# zmodload zsh/zprof

export SHELL_EXTENSION=zsh

USERNAME=`whoami`
# Path to your oh-my-zsh installation.
  export ZSH=/home/$USERNAME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
  # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
if [ "$TERM" = "xterm-256color" ]; then
    ZSH_THEME="powerlevel10k/powerlevel10k"
    POWERLEVEL9K_MODE='awesome-fontconfig'
    # POWERLEVEL9K_VI_NORMAL_MODE_STRING="N"
	# POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
else
    ZSH_THEME="af-magic"
fi
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

bindkey -v

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    docker
    git
    pip
    vi-mode
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# don't verify history expansion before execution
unsetopt histverify

# don't share history
#unsetopt sharehistory

# User configuration
setopt extended_glob
setopt auto_cd

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Most of these I try to keep shell independent

if [ -f $HOME/.functions ]; then
    . $HOME/.functions
fi

if [ -f $HOME/.aliases ]; then
    . $HOME/.aliases
fi

if [ -f $HOME/.shortcuts ]; then
    . $HOME/.shortcuts
fi

if [ -f $HOME/.path ]; then
    . $HOME/.path
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Colorizer aliases using grc
[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

# non shell independent stuff
# run zsh hook
precmd() { eval "$PROMPT_COMMAND" }

if [ -f $HOME/.ros_setup ]; then
    . $HOME/.ros_setup
fi

#export CATKIN_WS=~/documents/ros/rips_ws
#export CATKIN_WS=~/documents/ros/dual_arm_ws
#export CATKIN_WS=~/documents/ros/behavior_ws
#export CATKIN_WS=~/documents/ros/gohbot_ws
export CATKIN_WS=~/documents/ros/perception_ws


#export COLCON_WS=~/documents/ros/ros2_ws

setup-noetic
#setup-foxy

#source /opt/ros/noetic/setup.bash
#source ~/catkin_ws/devel/setup.bash
## source ~/rehang_ws/devel/setup.bash
#source ~/vr_ws/devel/setup.bash

. /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

# end for zsh profiler
# zprof
export WEBOTS_HOME=/usr/local/webots
export WEBOTS_LIBRARY_PATH=/home/collin/documents/ros/dual_arm_ws/devel/lib/webots_sim_driver
export WEBOTS_PROJECT=/home/collin/documents/ros/dual_arm_ws/src/dual_arm_control/hardware/webots_sim_driver
