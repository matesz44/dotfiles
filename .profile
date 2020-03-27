export PATH=${PATH}:~/.local/bin/:~/.gem/ruby/2.7.0/bin/:~/go/bin/

export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="nnn"

export SUDO_ASKPASS="/usr/local/bin/dmenupass"
# Burp weird font fix
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
# Ghidra blank screen fix
export _JAVA_AWT_WM_NONREPARENTING=1

# ~/ Clean up:
export LESSHISTFILE="-"

# [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

[[ -f ~/.bashrc ]] && . ~/.bashrc
