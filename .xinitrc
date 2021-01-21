#!/bin/sh

# Java apps rescale fix
wmname LG3D &

# Fancy Wallpaper
xwallpaper --zoom $HOME/.config/wall10.png &
#xwallpaper --output HDMI-0 --zoom ~/.config/wall3.jpg --output VGA-0 --zoom ~/.config/wall5.jpg &

# Hotkey daemon
sxhkd &

# Notification daemon
dunst &

# Custom statusbar for dwm
slstatus &

# Hungarian keyboard layout + remaps
setxkbmap us -option caps:escape,altwin:menu_win &

# Screenshooter tool
# flameshot &


# Window manager
exec dwm
