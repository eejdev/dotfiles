# Makefile — dotfiles automation
.PHONY: all brew iterm2 macos nvim mini cleanup

all: brew iterm2 macos nvim

mini: iterm2 nvim

brew:
	@echo "🍺 Installing Homebrew packages..."
	@brew bundle --file=Brewfile

iterm2:
	@echo "🖥 Configuring iTerm2..."
	@bash dotfiles/iterm2/iterm2-settings.sh

macos:
	@echo "🛠️  Applying macOS system defaults..."
	@bash dotfiles/macos/macos-defaults.sh

nvim:
	@echo "💻 Setting up Neovim..."
	@nvim --headless "+Lazy! sync" +qa || true

cleanup:
	@echo "🧹 Cleaning up broken symlinks..."
	find ~ -type l ! -exec test -e {} \; -delete


