export PATH=${PATH}:~/.local/bin/:~/.gem/ruby/2.7.0/bin/:~/go/bin/

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="chromium"
export READER="mupdf"
export FILE="nnn"

export SUDO_ASKPASS="/home/matesz/.local/bin/dmenupass"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'

# [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

[[ -f ~/.bashrc ]] && . ~/.bashrc
