#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza'
alias ll='eza -alh'
alias tree='eza --tree'
alias grep='grep --color=auto'
alias md='mkdir'
alias nv='neovide && exit'

#eval "$(oh-my-posh init bash)"
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/tiwahu.omp.json)"
#PS1='\[\e[1m\][\[\e[0;38;5;153m\]\u\[\e[0m\]@\[\e[38;5;153m\]\h\[\e[0m\] \w\[\e[1m\]]\[\e[0m\] \n'

eval "$(zoxide init bash)"
