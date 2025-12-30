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

# --- Enable vi key bindings ---
set -g mode-keys vi

# --- 1-based indexing ---
# set -g base-index 1
# set -g pane-base-index 1

# --- Split panes ---
# bind = split-window -h    # Vertical split (side by side)
# bind - split-window -v    # Horizontal split (top/bottom)
```
