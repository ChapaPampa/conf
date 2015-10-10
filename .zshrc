# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' rehash true
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-/]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' menu select=1
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/root/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# by néco

export TERM=rxvt-unicode-256color
export CC=gcc
export CXX=g++
export LANG=en_US.UTF-8
export PAGER="most"
export EDITOR="vim"

setopt appendhistory extended_glob HIST_IGNORE_ALL_DUPS HIST_SAVE_NO_DUPS sh_word_split
unsetopt beep notify

export CLICOLOR="YES"
export LSCOLORS="ExGxFxdxCxDxDxhbadExEx"

#alias reboot='/sbin/shutdown -r now'
#alias poweroff='/sbin/shutdown -p now'
alias reboot='sudo shutdown -r now'
alias poweroff='sudo shutdown -h now'

alias ls='ls --color=auto'
alias ll='ls -l'
#alias l='ll'
alias la='ls -a'
alias lla='ls -la'
alias cd..='cd ..'
alias emacs='emacs -nw'
alias reload="source ~/.zshrc"
alias c='clear'
alias setxusi='setxkbmap us -variant alt-intl'
alias setxus='setxkbmap us'
alias v='vim'
alias rsn='redshift -O 5000'
alias rsd='redshift -O 6500'

autoload -U colors && colors

PROMPT="%(!.%F{red}%B.%F{green}Chapa Pampa) %F{blue}[%~]%f%#%f%b "
RPROMPT='%F{red}%T%f%f'
setopt nopromptcr

bindkey -e
bindkey '^W' vi-backward-kill-word
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '[D' emacs-backward-word
bindkey '[C' emacs-forward-word
#alias valgrind = 'valgrind --tool=memcheck --leak-check=yes --show-reachable=yes'
