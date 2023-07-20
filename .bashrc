#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='exa -lha --group-directories-first'
alias l='exa -lh'
alias r='ranger'
PS1='\e[1;95m[\u@\h]\e[m\e[92m~\$\e[m '
