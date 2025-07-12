# 🕳️ dotfiles 

Minimal, modular dotfiles for macOS development, powered by [Dotbot](https://github.com/anishathalye/dotbot) and automation via `make`.

Use for inspiration for fork it.

---

## ✨ Features

- Symlinked configs using Dotbot
- macOS defaults & iTerm2 preferences
- Brewfile for installing system packages
- Neovim with LazyVim plugins (Python-focused)
- Clean shell setup with Zsh
- Modular setup per tool: `nvim`, `iterm2`, `macos`, `python`, etc.
- Optional: `make mini` for lightweight installs on work machines

---

## 🗂️ Directory Structure

```bash
dotfiles/
├── brew/                    # Brew install script
├── common/                  # Shared configs (.gitconfig, .profile)
├── iterm2/                  # iTerm2 plist + settings script
├── macos/                   # macOS defaults script
├── nvim/                    # Neovim config (LazyVim)
├── python/                  # pip config
├── zsh/                     # .zshrc
```

---

## 🚀 Usage

Clone recursively:
```bash
git clone --recursive https://github.com/eejdev/dotfiles.git
cd dotfiles
```

Run the install:
```bash
./install
```

Or use `make`:
```bash
make all        # Full install
make mini       # Only iterm2 + neovim
make cleanup    # Clean broken symlinks
```

---

## 🧩 Configuration Management

All symlinks and shell commands are managed via `install.conf.yaml`:
```yaml
- link:
    ~/.zshrc: dotfiles/zsh/.zshrc
    ~/.config/nvim: dotfiles/nvim
    ~/.profile: dotfiles/common/.profile
```

---

## 🛠 Tech Stack

- macOS (tested on M chips)
- [Dotbot](https://github.com/anishathalye/dotbot)
- [LazyVim](https://www.lazyvim.org/)
- iTerm2 with Fira Code + opacity settings
- Brew for system packages

---

## 📦 Recommended Brewfile Tools

- `neovim`
- `lazygit`
- `pyenv`
- `zsh`
- `luarocks`
- `git`
- `sqlite`

---

## 🧹 Maintenance

To clean up broken symlinks:

```bash
make cleanup
```

To re-run everything:

```bash
make reinstall
```

---

## 📁 Notes

- `.profile` is used to define `export DOTFILES=...` and base paths
- All scripts live inside `dotfiles/`, not `setup/`, for cleaner structure
- This repo assumes Homebrew is installed

---

## 🐚 Example `.profile`

```sh
export DOTFILES="$HOME/Repository/dotfiles"
export PATH="$DOTFILES/bin:$PATH"
```

---

> “Build your rig. Tune it like a weapon. Then forget it’s even there.”  
> — Inspired by Disco Elysium

