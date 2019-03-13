[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
source ~/.zsh/oh_my_zsh.zsh
source ~/.zsh/alias.zsh
source ~/.zsh/fzf.zsh
source ~/.zsh/environment.zsh

autoload -U promptinit; promptinit
prompt pure
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
