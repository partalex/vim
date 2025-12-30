```bash
# clone
git clone https://github.com/joshmedeski/sesh ~/.config/sesh

# Go
sudo apt install golang

# build
cd ~/.config/sesh
go build -o sesh

# install
sudo mv sesh /usr/local/bin/

# test
sesh --help
```

## Append to .bashrc
```bash
s() {
  local dir
  dir=$(zoxide query -l | fzf --height 40% --reverse --border) || return

  local session
  session=$(basename "$dir" | tr . _)

  cd "$dir" || return

  sesh connect "$session"
}
```