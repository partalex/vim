## git commands

### Amend the last commit and push the changes to the remote repository

```bash
git add -u; git commit --amend --no-edit; git push --force-with-lease
git add -u; git commit --amend --no-edit;
git push --force-with-lease
```

### soft rebase

```bash
git rebase -i HEAD~n
```

### Fetch origin master on local branch if  uu

```bash
git fetch origin master:master
```
