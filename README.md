# 🕳️ dotfiles 

Minimal, modular dotfiles for macOS development, powered by [Dotbot](https://github.com/anishathalye/dotbot) and automation via `make`.

Use for inspiration for fork it.

---

## ✨ Features

- Symlinked configs using Dotbot
- Brewfile for installing system packages
- Neovim with LazyVim plugins (Python-focused)
- Clean shell setup with Zsh
- Modular setup per tool: `nvim`, `iterm2`, `macos`, `python`, etc.
- Optional: `make mini` for lightweight installs on work machines

## 📁 Notes

- `.profile` is used to define `export DOTFILES=...` and base paths
- All scripts live inside `dotfiles/`, not `setup/`, for cleaner structure
- This repo assumes Homebrew is installed

> Before enlightenment, chop wood, carry water. After enlightenment, chop wood, carry water.
