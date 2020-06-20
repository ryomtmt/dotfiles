# .bashrc

# Source global definitions
if [[ -f /etc/bashrc ]] ; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias rm='rm -i '
alias cp='cp -i '
alias mv='mv -i '

alias vi='vim '
alias view='vim -R '
alias sudo='sudo -E '
alias ls='ls -a --color=auto '
alias ll='ls -la --color=auto '
alias grep='grep --color=auto '
alias fgrep='fgrep --color=auto '
alias egrep='egrep --color=auto '
alias relogin='exec $SHELL -l '

export PS1='[\t \u@\h:\w]\$ '
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTTIMEFORMAT='%Y/%m/%d %T '
export PROMPT_COMMAND="history -a"
export EDITOR="/usr/bin/vim"

AWS_COMPLETER=$(which git 2>/dev/null)
if [[ -f "${AWS_COMPLETER}" ]] ; then
  complete -C "${AWS_COMPLETER}" aws
fi
complete -cf sudo

umask 0022

DIRCOLORS_PATH="${HOME}/dotfiles/dircolors"
eval "$(dircolors "${DIRCOLORS_PATH}/dircolors.molokai")"

RESPATH="$HOME/dotfiles/res"
cd ${RESPATH}
for RESFILE in .?*
do
  if [[ ${RESFILE} != '.' ]] && [[ ${RESFILE} != '..' ]] ; then
    . ${RESFILE}
  fi
done

cd
