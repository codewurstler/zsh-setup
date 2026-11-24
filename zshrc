# Plugins: edit ~/.zsh_plugins.txt, then `exec zsh`. Update: `antidote update`
# Cache dir the oh-my-zsh plugins (docker, npm) write completions to
export ZSH_CACHE_DIR="$HOME/.cache/zsh"
mkdir -p "$ZSH_CACHE_DIR/completions"
fpath=("$ZSH_CACHE_DIR/completions" $fpath)

source "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"
antidote load

# --- Node (fnm, reads .nvmrc / .node-version on cd) ---
eval "$(fnm env --use-on-cd --shell zsh)"

# --- Aliases ---
alias cot='open -a CotEditor'
alias conf-zsh='cot ~/.zshrc'

# --- Starship ---
eval "$(starship init zsh)"

# --- fzf (Ctrl-R history, Ctrl-T files, Alt-C cd) ---
source <(fzf --zsh)

# --- fzf-tab ---
zstyle ':completion:*' menu no                      # let fzf-tab handle the menu
zstyle ':completion:*:descriptions' format '[%d]'   # enables group switching with < >
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls -1 --color=always $realpath'

# --- Startup cheat sheet (edit ~/.config/zsh/tips.zsh) ---
source ~/.config/zsh/tips.zsh
tips
