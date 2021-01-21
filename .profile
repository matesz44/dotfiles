export PATH="${PATH}:$HOME/.local/bin/:$HOME/.gem/ruby/2.7.0/bin/:$HOME/go/bin/:$HOME/.cargo/bin:$HOME/.config/coc/extensions/coc-clangd-data/install/11.0.0/clangd_11.0.0/bin"
export PLAN9="/usr/lib/plan9"

export EDITOR="vi"
export DVTM_EDITOR='vis'
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="nnn"


# GoLang
export GO111MODULE=on
export GOROOT=/home/matesz/.go
export PATH=$GOROOT/bin:$PATH
export GOPATH=/home/matesz/go
export PATH=$GOPATH/bin:$PATH

export ZDOTDIR="$HOME/.config/zsh"
export SUDO_ASKPASS="/usr/local/bin/dmenupass"
# Burp weird font fix
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
# Ghidra blank screen fix
export _JAVA_AWT_WM_NONREPARENTING=1
# QT dark style
export QT_QPA_PLATFORMTHEME=qt5ct

export LYNX_CFG="$HOME/.config/lynx/lynx.cfg"
export LYNX_LSS="$HOME/.config/lynx/lynx.lss"

# ~/ Clean up:
export LESSHISTFILE="-"

# [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# [[ -f ~/.bashrc ]] && . ~/.bashrc

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
