# Startup applications and configuration that is common to both I3 and gnome-desktop
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# add i3 specific scripts such as lock, toggle touchpad and others
export PATH="$PATH:$HOME/.config/i3/"
