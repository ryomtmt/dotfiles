# .bashrc

# User specific aliases and functions

alias rm='rm -i '
alias cp='cp -i '
alias mv='mv -i '

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias vi=vim
alias sudo='sudo -E '
alias ls='ls -a --color=auto '
export GREP_OPTIONS='--color=auto'
export PS1='[\t \u@\h:\w]\$ '
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTTIMEFORMAT='%Y/%m/%d %T '

eval "$(dircolors "$HOME/dircolors.molokai")"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
