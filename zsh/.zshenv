# .zshenv is launched as part of zsh loading process
# loads .env and .path if they exist both of which are intended to be shell independent
if [ -f $HOME/.env ]; then
    . $HOME/.env
fi

if [ -f $HOME/.path ]; then
    . $HOME/.path
fi
. "$HOME/.cargo/env"
