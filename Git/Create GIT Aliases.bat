
echo Removing current global aliases 

git config --global --remove-section alias 

echo Adding aliase 

git config --global alias.ad "add -A" 

git config --global alias.pl "pull --no-rebase" 

git config --global alias.plr "pull --rebase" 

git config --global alias.plf "pull --ff-only" 

git config --global alias.co checkout 
git config --global alias.cob "co -b"
git config --global alias.com "co master"

git config --global alias.mm "merge master"

git config --global alias.ci "!git commit --no-verify -m"
git config --global alias.civ "!git commit -m"

git config --global alias.st status 

git config --global alias.br branch 

git config --global alias.f "!git fetch --all --tags --progress --prune && git status "

git config --global alias.undounstaged "!git reset --hard && git clean -dfx "

git config --global alias.fdr "fetch --dry-run --progress" 

git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short" 

git config --global alias.type "cat-file -t" 

git config --global alias.dump "cat-file -p"


echo Configured global aliases 

git config --global --get-regexp alias 