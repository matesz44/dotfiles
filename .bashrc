#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.aliasrc ]] && . ~/.aliasrc
PS1='[\u@\h \W]\$ '
