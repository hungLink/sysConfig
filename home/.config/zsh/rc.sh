# Load ps1 prompt styling. See file in fpath for more deets.
fpath=("$HOME/.config/zsh/prompts" "$fpath[@]")
autoload -Uz promptinit
promptinit
prompt gun

#history size and location
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

#syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#autocompletion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) #include hiddne files
bindkey -M menuselect 'j' vi-backward-char
bindkey -M menuselect 'k' vi-down-line-or-history
bindkey -M menuselect 'l' vi-up-line-or-history
bindkey -M menuselect ';' vi-forward-char

#vim mode
bindkey -v
export KEYTIMEOUT=1
autoload edit-command-line; zle -N edit-command-line
bindkey '^E' edit-command-line



