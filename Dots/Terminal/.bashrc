# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

PS1="\W \`if [ \$? = 0 ]; then echo '\[\e[34m\]>\[\e[m\]\[\e[36m\]>\[\e[m\]> '; else echo '\[\e[31m\]>\[\e[m\]\[\e[33m\]>\[\e[m\]> '; fi\` "
LESSHISTFILE=-
export WGETRC="$XDG_CONFIG_HOLE/wgetrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOLE"/gtk-2.0/gtkrc

alias v='sudo vim'
alias m='sudo eopkg clean dc rmo ur up'
alias c='clear'
alias pkg='sudo eopkg'
alias toggle-light-dark='~/toggle-light-dark'
alias slavfetch='neofetch --source ~/.config/neofetch/adidas.txt'

export SPICETIFY_INSTALL="~/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"

