[[ -f "$HOME/.profile" ]] && source "$HOME/.profile"

# === Core Paths ===
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git)

# === Source Modular Zsh Files ===
for file in $DOTFILES/dotfiles/*/*.zsh(.N); do
  source "$file"
done

source $DOTFILES/dotfiles/git/alias.zsh

# == fzf ===
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

