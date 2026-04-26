#!/bin/bash

if ! git config --global user.name &>/dev/null; then
    read -p "Nom Git : " name
    git config --global user.name "$name"
fi

if ! git config --global user.email &>/dev/null; then
    read -p "Email Git : " email
    git config --global user.email "$email"
fi

git config --global init.defaultBranch main
#git config --global core.editor "code --wait"
