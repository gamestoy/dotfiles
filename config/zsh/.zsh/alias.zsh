alias ls='eza -abhl --icons --color=always -s=type'
alias git-clean-local='git branch --merged | grep -v "\*" | grep -v master | xargs -n 1 git branch -d'
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs nvim"
alias dc="docker compose"%
