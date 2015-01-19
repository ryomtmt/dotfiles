#!/bin/bash

cd $(dirname $0)/src
for dotfile in .?*
do
  if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
  then
    ln -fs "$PWD/$dotfile" $HOME
  fi
done

cd $(dirname $0)/src
for dotfile in ?*
do
  if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
  then
    ln -fs "$PWD/$dotfile" $HOME
  fi
done

if [ -d ~/.vim/bundle ]
then
  cd ~/.vim/bundle/neobundle.vim
  git fetch
  vim +":NeoBundleUpdate!" +:q
else
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  vim +":NeoBundleInstall" +:q
fi

