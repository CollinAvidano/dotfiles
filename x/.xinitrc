# Startup applications and configuration that is common to both I3 and gnome-desktop
#[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# quick settings for above
setxkbmap -option caps:swapescape
setxkbmap -option altwin:swap_alt_win

# this does setup before you login and the env path export below provides path for when i3 boots so it can find scripts
# add i3 specific scripts such as lock, toggle touchpad and others
export PATH="$PATH:$HOME/.config/i3/"
