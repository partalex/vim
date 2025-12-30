```bash 
vim ~/.tmux.conf
```

## configuration

```bash
# --- Set prefix key to Ctrl + s ---
unbind C-b                # Unbind default prefix
set-option -g prefix C-s  # Set new prefix
bind C-s send-prefix       # Allow sending literal Ctrl+s if needed

# --- Enable mouse support ---
set -g mouse on

# Vim keybindings u copy-mode
set -g mode-keys vi

# --- Reload tmux configuration ---
bind r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded"
```