#!/bin/zsh

autoload -U colors && colors
wal -R -n -q && /usr/bin/clear

#----------------------------------------------

# Rainbow
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}\
# %n%{$fg[green]%}@%{$fg[blue]%}%M %{$\
# fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Minimal with pwd
# PS1="%{$fg[blue]%}{%{$fg[magenta]%}\
# %~%{$fg[blue]%}}%{$reset_color%}$%b "

# "$"
PS1="%{$fg[yellow]%}$\
 %{$reset_color%}"

#----------------------------------------------

EDITOR=nvim
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
#setopt appendhistory

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)              
#bindkey '^ ' autosuggest-accept

[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

source /usr/share/autojump/autojump.zsh
source /usr/share/zsh/plugins/\
zsh-vi-mode/zsh-vi-mode.plugin.zsh

source /usr/share/zsh/plugins/\
zsh-syntax-highlighting/\
zsh-syntax-highlighting.zsh\
 2>/dev/null
