# Add following in wsl2 .bashrc

```bash
# === Conditional local bashrc loading ===

# Check if we're inside nix-shell or VSCode terminal and in a project folder
if [ -n "$IN_NIX_SHELL" ] && [ "$TERM_PROGRAM" = "vscode" ]; then
  if [[ -f "$PWD/.bashrc.local" ]]; then
    source "$PWD/.bashrc.local"
  fi
fi
```
