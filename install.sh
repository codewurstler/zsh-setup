#!/usr/bin/env zsh
# Installs tools and symlinks this repo's files into $HOME.
# Existing files are backed up as <file>.bak.<timestamp>.
set -e
REPO="${0:A:h}"
TS=$(date +%Y%m%d%H%M%S)

command -v brew >/dev/null || { echo "Install Homebrew first: https://brew.sh"; exit 1; }
brew bundle --file="$REPO/Brewfile"

link() {  # link <repo file> <target>
  local src="$REPO/$1" dst="$2"
  mkdir -p "${dst:h}"
  if [[ -e "$dst" && ! -L "$dst" ]]; then mv "$dst" "$dst.bak.$TS"; echo "backup: $dst.bak.$TS"; fi
  ln -sfn "$src" "$dst"; echo "linked: $dst -> $src"
}

link zshrc            ~/.zshrc
link zsh_plugins.txt  ~/.zsh_plugins.txt
link tips.zsh         ~/.config/zsh/tips.zsh

echo "Done. Run: exec zsh"
