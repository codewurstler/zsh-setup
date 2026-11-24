# Startup cheat sheet. Edit freely. Disable: remove the `tips` line in ~/.zshrc
tips() {
  local b=$'\e[1m' d=$'\e[2m' c=$'\e[36m' r=$'\e[0m'
  print -r -- "${b}Shell tips${r} ${d}(run 'tips' to show again)${r}"
  print -r -- "  ${c}Tab${r}        fuzzy completion menu ${d}(e.g. docker compose <Tab>)${r}  ${c}< >${r} switch groups"
  print -r -- "  ${c}→${r}          accept grey suggestion from history"
  print -r -- "  ${c}Ctrl-R${r}     fuzzy search history"
  print -r -- "  ${c}Ctrl-T${r}     fuzzy pick a file into the command line"
  print -r -- "  ${c}Alt-C${r}      fuzzy cd into a subfolder"
  print -r -- "  ${c}**<Tab>${r}    fuzzy anything: ${d}vim **<Tab>, cd **<Tab>, kill <Tab>${r}"
  print -r -- "  ${c}conf-zsh${r}   edit ~/.zshrc  ${d}| plugins: ~/.zsh_plugins.txt, then exec zsh${r}"
}
