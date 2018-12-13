 
ECHO Removing current global aliases 

git config --global --remove-section alias 

ECHO Adding aliase 

git config --global alias.ad "add -A" 

git config --global alias.pl "pull --no-rebase" 

git config --global alias.plr "pull --rebase" 

git config --global alias.plf "pull --ff-only" 

git config --global alias.co checkout 

git config --global alias.ci commit 

git config --global alias.st status 

git config --global alias.br branch 

git config --global alias.f "!git fetch --all --tags --progress && git status "

git config --global alias.undounstaged "!git reset --hard && git clean -dfx "

git config --global alias.fdr "fetch --dry-run --progress" 

git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short" 

git config --global alias.type "cat-file -t" 

git config --global alias.dump "cat-file -p" 

ECHO Configured global aliases 

git config --get-regexp alias 