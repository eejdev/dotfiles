#!/usr/bin/env bash

# Set iTerm2 to load preferences from custom folder
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.config/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
