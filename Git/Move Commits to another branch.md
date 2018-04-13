# Moving commits to another branch

See <https://gist.github.com/unbracketed/889c844473bcca1917e2>

## Move 1 commit
`git cherry-pick [commit hash]`


## Move multiple commits

X = first commit you want to bring into branch.

Y = last commit you want to bring into branch.

```cmd
git checkout [branch name]
git log  # Note the hash of the commits
git rebase --onto [branch name] [commit before X] [commit Y]
git rebase HEAD [branch name]
```