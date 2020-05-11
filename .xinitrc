#!/bin/sh
# Java apps rescale fix
wmname LG3D &
# Fancy Wallpaper
xwallpaper --zoom $HOME/.config/wall3.jpg &
# Hotkey daemon
sxhkd &
# Notification daemon
dunst &
# Custom statusbar for dwm
slstatus &
# Hungarian keyboard layout
setxkbmap hu &
# Screenshooter tool
flameshot &
# Window manager
exec dwm
