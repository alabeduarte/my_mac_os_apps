#!/usr/bin/env bash

echo 'Prepare to install development tools'

brew install rbenv

brew install tmux
echo 'export TERM=xterm-256color' >> ~/.zshrc

brew cask install iterm2

brew cask install virtualbox

brew cask install vagrant
echo 'alias vg="vagrant"' >> ~/.zshrc
echo 'alias v="vim"' >> ~/.zshrc

sh ./development-tools/install_tmuxinator.sh
sh ./development-tools/install_jenv.sh
sh ./development-tools/install_nvm.sh
sh ./development-tools/install_vim_files.sh
