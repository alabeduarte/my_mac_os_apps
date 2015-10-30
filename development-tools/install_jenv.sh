#!/usr/bin/env bash

echo 'Prepare to install jenv'

brew install jenv

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'if which jenv > /dev/null; then eval "$(jenv init - zsh)"; fi' >> ~./zshrc
