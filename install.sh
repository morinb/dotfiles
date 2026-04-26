#!/bin/bash
set -e

git clone git@github.com:TON_USER/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
bash bootstrap.sh
