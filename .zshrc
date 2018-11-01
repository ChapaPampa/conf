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
#export CC=gcc
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
alias reboot='shutdown -r now'
alias poweroff='shutdown -h now'
alias lock='i3lock -c 000000 -i ~/.img/lock.png'
alias hibernate='lock & systemctl suspend'

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
alias git-patch="git format-patch -v7 --subject-prefix='PATCH k3' HEAD~5"
alias git-mail="git send-email --to='stos-1@lse.epita.fr' --in-reply-to='<1458682347-24015-5-git-send-email-etienne.brouzes@epita.fr>'"
alias jogsoul="~/.jogsoul.pl ~/.jogsoul.conf"
alias copy-buff="xclip -selection clipboard"

#historique
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
export HISTFILE SAVEHIST

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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/project/robo/MATLAB/bin"
