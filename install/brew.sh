#!/bin/bash
set -e
set -x
if ! command -v brew &>/dev/null; then
    echo "🍺 Installation Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

eval "$($(which brew) shellenv)"

brew update
brew bundle --file=Brewfile
