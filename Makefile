# Makefile — dotfiles automation
.PHONY: all brew iterm2 go-links macos nvim cleanup

all: brew iterm2 macos 

mini: iterm2 nvim

brew:
	@echo "🍺 Installing Homebrew packages..."
	@brew bundle --file=Brewfile

nvim:
	@echo "💻 Setting up Neovim config..."
	@ln -sfn $(PWD)/dotfiles/nvim ~/.config/nvim
	@echo "🔁 Symlinked Neovim config"
	@nvim --headless "+Lazy! sync" +qa || true

iterm2:
	@echo "🖥 Configuring iTerm2..."
	@bash dotfiles/iterm2/iterm2-settings.sh

macos:
	@echo "🛠️  Applying macOS system defaults..."
	@bash dotfiles/macos/macos-defaults.sh

