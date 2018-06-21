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
alias ll='ls -alFh' 

# ls grep colors if COLOR support
if [ -x /usr/bin/dircolors ]; then
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
fi

# shopt stuff
shopt -s checkwinsize # update the values of LINES and COLUMNS if necessary after each command
shopt -s autocd # very nice for lazy peeps
shopt -s cdable_vars # assume if the arg to cd is  a file I want to go to the file's parent directory
shopt -s checkjobs # check jobs before exitting
shopt -s cmdhist # save multiline command in same history entry
shopt -s cdspell # cd corrects an idiot's typing skills
shopt -s no_empty_cmd_completion # do not try to complete on an empty line
