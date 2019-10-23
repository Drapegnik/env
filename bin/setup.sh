#!/usr/bin/env bash

set -u

sudo -v

excluded_paths=(".DS_Store" "README.md" "LICENSE" ".ghci")

for path in $(ls -a); do
    # only files
    if [ -f "$path" ]; then
      # ignore excluded
      if [[ ! " ${excluded_paths[@]} " =~ " ${path} " ]]; then
        echo "> create symlink:\t~/$path\t-> $(pwd)/$path"
        ln -s -f $(pwd)/$path ~/$path
      fi
    fi
done

# echo "> copy stack files in:\t~/.stack"
# cp -R .stack/. ~/.stack

echo "> install brew packages:"
brew bundle

echo "> install npm global packages:"
sh bin/npm.sh

echo "> add custom scripts"

## https://github.com/chubin/cheat.sh
mkdir ~/bin
curl https://cht.sh/:cht.sh > ~/bin/cht.sh
chmod +x ~/bin/cht.sh
