#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'
alias vim2='vim'

PS1='[\u@\h \W]\$ '
export EDITOR="vim"

BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

case $(tty) in
	/dev/tty[0-9]*)
		return
		;;
esac

if [ -f /lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
fi

export PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin

# remap <CAPS> to <CTRL>
setxkbmap -option ctrl:nocaps

# enable tab completion when using sudo
complete -cf sudo
