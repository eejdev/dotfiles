#!/usr/bin/env bash

# ---- Keyboard & Input
# Fast key repeat (essential for Vim)
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

# Disable smart quotes and dashes (gets in the way with code)
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

# Disable press-and-hold for keys in favor of key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# ---- Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# ---- Screenshot
# Save screenshots to ~/Screenshots
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

# Show Library folder
chflags nohidden ~/Library

# Restart Finder to apply
killall Finder
echo "✅ macOS defaults applied"
