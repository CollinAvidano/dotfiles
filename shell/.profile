# ~/.profile: executed by the command interpreter for login shells.
# This means its not run on ssh shells
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

TZ='America/New_York'; export TZ

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Start gnome keyring daemon
#if [ -n "$DESKTOP_SESSION" ];then
#   eval $(gnome-keyring-daemon --start)
#   export SSH_AUTH_SOCK
#fi

#if [ -f "${HOME}/.gpg-agent-info" ]; then
#     source "${HOME}/.gpg-agent-info"
#       export GPG_AGENT_INFO
#       export SSH_AUTH_SOCK
#       export SSH_AGENT_PID
#else
#    eval $( gpg-agent --daemon --write-env-file ~/.gpg-agent-info )
#fi

# loads .env and .path if they exist both of which are intended to be shell independent
if [ -f $HOME/.env ]; then
    . $HOME/.env
fi

if [ -f $HOME/.path ]; then
    . $HOME/.path
fi

export PROMPT_COMMAND="pwd > /tmp/whereami"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

#gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"
setxkbmap -option caps:swapescape
setxkbmap -option altwin:swap_alt_win

. "$HOME/.cargo/env"
