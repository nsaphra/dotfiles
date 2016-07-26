# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

export PATH=/usr/local/bin:$PATH:/usr/bin:/usr/local/sbin

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# woo man / help in one command
man () {
    /usr/bin/man $@ || (help $@ 2> /dev/null && help $@ | less)
}

# PYTHONPATH needs this here for some reason
export PYTHONPATH=$PYTHONPATH:/Library/Python/2.7/site-packages:/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python

export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future

export WNHOME=/Users/nsaphra/Documents/research/glamr/WordNet-3.0
export WORDNET_JAR=/Users/nsaphra/Documents/research/glamr/jamr/src/edu.mit.jwi_2.3.3_jdk.jar

# Keeps perl working for PDT corpus stuff
#source ~/perl5/perlbrew/etc/bashrc
#export PERL5LIB=:$HOME/perl5/perlbrew/perls/perl-5.16.0/lib/site_perl:$PERL5LIB

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
