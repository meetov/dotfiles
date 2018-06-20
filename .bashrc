#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PROMPT
PS1='[\u@\h \W]\$ '

# HIST
export HISTCONTROL=erasedups # do not keep duplicates
export HISTSIZE=10000
export HISTFILESIZE=100000
shopt -s histappend # append to history instead of overwriting

# ALIASES
alias ll='ls --color=auto -lah'
