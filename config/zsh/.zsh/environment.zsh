#NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#EXA
export EXA_COLORS="da=38;5;245"

typeset -A ZSH_HIGHLIGHT_STYLES 
ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=#53c99e"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=#53c99e"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=#53c99e"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=248"


export ZSH_AUTOSUGGEST_STRATEGY="completion"
