## Wsl bashrc

```bash
cd; vim .bashrc
```

```bash
copy() {
    local remote="$1"
    local target="/tmp/avasilic/copied"

    if [ -z "$remote" ]; then
        echo "Usage: copy <ssh-host-from-config>"
        return 1
    fi

    ssh "$remote" "mkdir -p $target"

    rsync -av --progress \
        "/mnt/c/Users/kaoko/Documents/to-copy/" \
        "$remote:$target/"
}
```

## Remote machine

```bash
alias av='cd /tmp/avasilic'
alias avc='cd /tmp/avasilic/copied'
```