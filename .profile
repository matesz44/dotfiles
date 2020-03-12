export PATH=${PATH}:~/.local/bin/:~/.gem/ruby/2.7.0/bin/:~/go/bin/

export EDITOR="vim"
#export TERMINAL="alacritty"
export TERMINAL="terminator"
export BROWSER="firefox"
export READER="mupdf"
export FILE="nnn"

export SUDO_ASKPASS="/home/matesz/.local/bin/dmenupass"
# Burp weird font fix
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
# Ghidra blank screen fix
export _JAVA_AWT_WM_NONREPARENTING=1

# [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

[[ -f ~/.bashrc ]] && . ~/.bashrc
