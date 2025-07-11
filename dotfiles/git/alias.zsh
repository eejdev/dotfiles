# === Git Aliases ===

alias g='git'

alias ga='git add'
alias gaa='git add .'
alias gb='git branch'
alias gbd='git branch -d'
alias gc='git commit -v'
alias gca='git commit -av'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --graph --decorate'
alias glg='git log --stat'
alias gs='git status -sb'
alias gst='git status'
alias gpull='git pull --rebase'
alias gpush='git push'
alias gundo='git reset --soft HEAD~1'
alias grs='git restore .'
alias grss='git restore --staged .'
alias gclean='git clean -fd'

# === Submodule Management ===
alias gsub='git submodule update --init --recursive'

# === Git Ignore Help ===
alias gignore='curl -sL https://www.toptal.com/developers/gitignore/api/'

# === Stash Magic ===
alias gsh='git stash'
alias gshp='git stash pop'
alias gshl='git stash list'

# === Rebase Utility ===
alias grbi='git rebase -i HEAD~5'

# === Amend the last commit (useful for fixing messages or adding files) ===
alias gamend='git commit --amend --no-edit'

# === Show current repo summary ===
alias grepo='echo "📦 $(basename $(git rev-parse --show-toplevel 2>/dev/null)) | 🔀 $(git branch --show-current)"'

