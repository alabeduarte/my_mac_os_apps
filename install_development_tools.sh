#!/usr/bin/env bash

echo 'Prepare to install development tools'

brew install rbenv
brew install tmux

brew cask install iterm2
brew cask install virtualbox
brew cask install vagrant

sh ./development-tools/install_tmuxinator.sh
sh ./development-tools/install_jenv.sh
sh ./development-tools/install_nvm.sh
sh ./development-tools/install_vim_files.sh
