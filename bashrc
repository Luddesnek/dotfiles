#PS1="\e[0;36m→ \e[0m"
PS1="\e[0;36m$ \e[0m"
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

EDITOR=nvim

HISTSIZE=10000
SAVEHIST=10000
histfile=~/.cache/bashhistory

set -o vi
QT_SCALE_FACTOR=1
