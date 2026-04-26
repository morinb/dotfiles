#!/bin/bash

if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    echo "🔑 Génération clé SSH..."
    ssh-keygen -t ed25519 -C "$(git config --global user.email)"
    eval "$(ssh-agent -s)"
    ssh-add --apple-use-keychain ~/.ssh/id_ed25519
fi
