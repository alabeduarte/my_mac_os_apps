#!/usr/bin/env bash

echo 'Prepare to install vim files'

clone_or_pull () {
  root_dir=`pwd`
  if [ -d $1 ]; then
    echo "Pull latest version of $1"
    cd $1
    git pull origin master
  else
    echo "Clone $1"
    git clone https://github.com/alabeduarte/$1.git $1
  fi
  pwd
  echo "Going back to $root_dir"
  cd $root_dir
}

clone_or_pull 'vim-files'

sh ./vim-files/install.sh
