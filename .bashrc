#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR="vim"

BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

if [ -f /lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh ]; then
   source /lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
fi
