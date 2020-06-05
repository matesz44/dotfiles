#!/bin/sh

# Java apps rescale fix
wmname LG3D &

# Fancy Wallpaper
#xwallpaper --zoom $HOME/.config/wall3.jpg &
xwallpaper --output HDMI-0 --zoom ~/.config/wall3.jpg --output VGA-0 --zoom ~/.config/wall5.jpg &

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

# Mapping keys 
setxkbmap -option caps:escape &
setxkbmap -option altwin:menu_win &

# Keyboar speed tuning
#xset r rate 300 50 &

# Window manager
exec dwm
