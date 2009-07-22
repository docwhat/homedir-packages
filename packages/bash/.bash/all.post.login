#
# $Id$
#

export PROMPT_COMMAND='setPS1'

addToPath $HOME/bin
addToPath $HOME/local/bin
addToManPath $HOME/local/man

export JPY=$HOME/.bash/j2/j.py
source $HOME/.bash/j2/j.sh


# ---
# setup some more defaults, now that the value of PATH is correct for the local system

PAGER=`type less 2>/dev/null`

# fix vi
[[ "`vi --version 2>/dev/null | awk 'NR==1 { print $1 }'`" != "VIM" ]] && which vim &> /dev/null && alias vi='vim' && export EDITOR='vim' && export DISPLAY=${EDITOR}

# have `ls` output color if it knows how
ls --version 2>/dev/null | grep coreutils >/dev/null && { alias ls &> /dev/null || alias ls="ls --color=auto -F" ; }
#ls --version 2>/dev/null | grep coreutils >/dev/null && alias ls="ls --color=auto -F"


# try to maintain LD_LIBRARY_PATH when using `sudo -s`
PATH_LD_BAK=${LD_LIBRARY_PATH}

#source ~/.bash/bash_completion

