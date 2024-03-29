# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export LS_COLORS=$LS_COLORS:'ow=01;33'
export PATH=$PATH:"/opt/flutter/bin"
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/itami/.zshrc'

alias vim='nvim'
alias install='sudo pacman -S'
alias shut='poweroff'
alias mkdir='mkdir -p'
alias ls='lsd'

source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
eval "$(starship init zsh)"

