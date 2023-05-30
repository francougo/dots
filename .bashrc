# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

if [[ -z "${VIMRUNTIME}" ]]; then
        vimind=''
else
        vimind="\[\e[1;34m\][vim]"
fi

# Put your fun stuff here.

export PS1="${vimind} \[\e[1;33m\]\u\[\e[1;37m\]@\[\e[1;33m\]\h \[\e[1;34m\]\w \[\e[1;33m\]\$ \[\e[0;37m\]"
export LANG="en_US.UTF-8"
export LC_COLLATE="C.UTF-8"
export EDITOR=vim
export VISUAL=vim 
set -o vi
