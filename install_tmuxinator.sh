#!/usr/bin/env bash

echo 'Prepare to install tmuxinator'

gem install tmuxinator
rbenv rehash
mux doctor
