[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
 
source ~/.zsh/alias.zsh
source ~/.zsh/environment.zsh
source ~/.zsh/fzf.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
