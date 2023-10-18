#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias l='exa --color=auto'
alias ll='exa -lah --color=auto'
alias c='cat'
alias r='ranger'
alias grep='grep --color=auto'
PURPLE=$(tput setaf 213)
PS1='\[$PURPLE\] \W >\[$(tput sgr0) '
(cat $HOME/.cache/wal/sequences &)
neofetch
export PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
