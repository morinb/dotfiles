#!/bin/bash
set -e

DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%s)"

echo "🚀 Bootstrap dotfiles..."

# Clone si absent
if [ ! -d "$DOTFILES_DIR" ]; then
    git clone https://github.com/morinb/dotfiles.git "$DOTFILES_DIR"
fi

cd "$DOTFILES_DIR"

# Backup
mkdir -p "$BACKUP_DIR"

backup_file() {
    local file="$1"
    [ -f "$file" ] && cp "$file" "$BACKUP_DIR/"
}

echo "💾 Backup dans $BACKUP_DIR"

backup_file "$HOME/.zshrc"
backup_file "$HOME/.gitconfig"

# Modules
bash install/brew.sh
bash install/zsh.sh
bash install/git.sh
bash install/ssh.sh
bash macos/defaults.sh

echo "🎉 Setup terminé !"
echo "Rollback possible via: $BACKUP_DIR"
