alias ls='exa -abhl --grid --color=always -s=type'
alias git-clean-local='git branch --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'
