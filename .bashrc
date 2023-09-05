#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias l='exa --color=auto'
alias ll='exa -la --color=auto'
alias c='cat'
alias r='ranger'
alias grep='grep --color=auto'
PURPLE=$(tput setaf 213)
PS1='\[$PURPLE\]\u \W\$\[$(tput sgr0) '
