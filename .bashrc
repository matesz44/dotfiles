#
# ~/.bashrc
#

# htb ip in the beginning of prompt
function tun0_ip() {
    echo -n $(ip addr show tun0 2> /dev/null | grep -Po 'inet \K[\d.]+')
}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.aliasrc ]] && . ~/.aliasrc
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;36m\][\u@\h] \[\e[1;35m\]$(tun0_ip) \[\e[1;33m\]\W\[\e[1;0m\]\$ '
