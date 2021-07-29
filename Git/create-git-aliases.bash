#!/usr/bin/env bash

echo Removing current global aliases 

git config --global --remove-section alias 

echo Adding aliase 

git config --global alias.ad "add -A" 

git config --global alias.pl "pull --no-rebase" 

git config --global alias.plr "pull --rebase" 

git config --global alias.plf "pull --ff-only" 

git config --global alias.co checkout 
git config --global alias.cob "co -b"
git config --global alias.com "co main"

git config --global alias.mm "merge main"


git config --global alias.f '!git fetch --all --tags --progress --prune; git status'
git config --global alias.st f 

git config --global alias.b '!git for-each-ref --sort="-authordate" --format="%(authordate)%09%(objectname:short)%09%(refname)" refs/heads | sed -e "s-refs/heads/--"'
git config --global alias.br "branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"

git config --global alias.undounstaged "!git reset --hard && git clean -dfx "
git config --global alias.undo 'reset --soft HEAD~1'

git config --global alias.fdr "fetch --dry-run --progress" 


git config --global alias.type "cat-file -t" 

git config --global alias.dump "cat-file -p"

git config --global alias.contrib 'shortlog -e --summary --numbered'
git config --global alias.ll 'log --oneline'


echo Configured global aliases 

git config --global --get-regexp alias 