# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias ll='ls -lF'
alias la='ls -al'
alias l='ls -CF'
alias fuck='sudo $(history -p \!\!)'
alias gti='git'

alias alert='osascript -e "display notification \"Go back to work\" with title \"Task completed\" sound name \"r2d2\""'

typeset -A key

key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${key[Up]}" up-line-or-beginning-search # Up
bindkey "${key[Down]}" down-line-or-beginning-search # Down

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
