#!/usr/bin/env bash
set -x

echo 'Install git using brew'
brew install git

alias diff='git --no-pager diff --color=auto --no-ext-diff --no-index'
git config --global diff.compactionHeuristic true

echo 'Configuring better git log'
git config --global alias.l "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

echo 'Configure vim as global editor'
git config --global core.editor $(which vim)

echo 'Configure git aliases'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

brew install gitup

echo 'GPG'
brew install gpg2

echo 'Git extras'
brew install git-extras

echo 'Prepare to install development tools'

brew install the_silver_searcher

brew install wget

brew install httpie

brew install rbenv
echo 'if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi' >> ~/.zshrc

brew cask install iterm2

# requires root privileges
brew cask install docker
brew install docker-clean
# open /Applications/Docker.app

sh ./development-tools/install_jenv.sh
sh ./development-tools/install_nvm.sh

sh ./development-tools/install_vim_files.sh
echo 'alias v="vim"' >> ~/.zshrc

brew install yarn
