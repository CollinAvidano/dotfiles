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
if [ "$TERM" = "xterm-256color" ] || [ "$TERM" = "screen-256color" ] || [ "$TERM" = "xterm-kitty" ]; then
    ZSH_THEME="powerlevel10k/powerlevel10k"
    POWERLEVEL9K_MODE='awesome-fontconfig'
    # POWERLEVEL9K_VI_NORMAL_MODE_STRING="N"
	# POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
else
    ZSH_THEME="af-magic"
fi

if [ "$TERM" = "xterm-kitty" ]; then
    alias ssh="kitten ssh"
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
    poetry
    docker
    git
    pip
    vi-mode
    zsh-autosuggestions
    zsh-nvm
    wd
)

source $ZSH/oh-my-zsh.sh

# don't verify history expansion before execution
unsetopt histverify

# don't share history
#unsetopt sharehistory

# User configuration
#setopt extended_glob
setopt auto_cd

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# zoxide
eval "$(zoxide init zsh)"

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

eval "$(direnv hook zsh)"

. $HOME/.ros_setup

#alias conda-init="unset PYTHON_PATH && conda init"
## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/miniconda/etc/profile.d/conda.sh" ]; then
#        . "/opt/miniconda/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/miniconda/bin:$PATH"
#    fi
#fi
#unset __conda_setup
#<<< conda initialize <<<


# end for zsh profiler
# zprof
#. "/home/collin/.acme.sh/acme.sh.env"

# Generated for envman. Do not edit.
#[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi



# these should not be here
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/collin/.mujoco/mujoco200/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/ArcGIS/arcgis/runtime_sdk/qt100.9/sdk/linux/x64/lib"


#source ${HOME}/.nix-setup

# because im losing my mind as to what is resetting this
setxkbmap -option caps:swapescape
setxkbmap -option altwin:swap_alt_win

eval "$(direnv hook zsh)"


autoload -U bashcompinit
bashcompinit

eval "$(register-python-argcomplete pipx)"
