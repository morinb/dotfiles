#!/bin/bash

echo "🍏 macOS tweaks..."

defaults write com.apple.finder AppleShowAllFiles YES
killall Finder || true
