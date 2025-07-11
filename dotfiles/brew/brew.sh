#!/usr/bin/env bash
set -e

echo "🍺 Installing Homebrew packages..."

# Check if Homebrew is installed
if ! command -v brew >/dev/null; then
  echo "🔧 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure Brewfile exists
if [ ! -f Brewfile ]; then
  echo "❌ Brewfile not found. Create one or remove the brew task from Makefile."
  exit 1
fi

# Install packages
brew bundle --file=Brewfile
