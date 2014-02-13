[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

export SHELL=/usr/bin/zsh
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_SOCKET="/tmp/bspwm-socket"

compton -b -c -d :0.0
setxkbmap dvorak
nitrogen --restore

sxhkd &
exec bspwm
