# === Core Paths ===
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git)

# === Source Modular Zsh Files ===
for file in $DOTFILES/dotfiles/*/*.zsh(.N); do
  source "$file"
done
