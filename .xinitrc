[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

export SHELL=/usr/bin/zsh
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_SOCKET="/tmp/bspwm-socket"

xcompmgr &
setxkbmap dvorak

#xset +fp /usr/share/fonts/local
#xset fp rehash 

hsetroot -fill .config/bspwm/wallpaper.png

sxhkd &
exec bspwm
