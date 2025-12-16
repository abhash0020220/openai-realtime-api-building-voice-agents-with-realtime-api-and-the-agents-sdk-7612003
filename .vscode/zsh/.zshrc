setopt prompt_subst

workspace_root() {
  git rev-parse --show-toplevel 2>/dev/null
}

PROMPT='$( \
  ws=$(workspace_root); \
  if [[ -n "$ws" && "$PWD" == "$ws" ]]; then \
    echo "~/${ws##*/}/"; \
  elif [[ -n "$ws" ]]; then \
    echo "~/…/${PWD##*/}/"; \
  else \
    echo "${PWD/#$HOME/~}/"; \
  fi \
) $( [[ $EUID -eq 0 ]] && echo "#" || echo "$" ) '