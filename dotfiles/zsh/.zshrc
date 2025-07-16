# Load .profile if present
[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"

# Set Oh My Zsh base path
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""  # Disable OMZ theme, use Starship instead
plugins=(git)

# Source dotfiles
for file in $DOTFILES/dotfiles/*/*.zsh(.N); do
  source "$file"
done

source $DOTFILES/dotfiles/git/alias.zsh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# === Starship prompt ===
eval "$(starship init zsh)"

