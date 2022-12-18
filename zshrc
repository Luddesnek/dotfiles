#!/bin/zsh

######################
#    THE Lud zshrc   #
#       © Lud        #
######################

alias "$"="echo"

set -o vi
export PATH="${PATH}:${HOME}/.local/bin/"
tput setaf 1
autoload -U colors && colors

if;
   [[ $(echo "$(ps -o comm= -p $(ps -o ppid= -p $$))") != st ]];
then;
   (cat ~/.cache/wal/sequences &);
fi

if
   [ -f /home/lu/.config/ctemp ] 
   
   then : 
   else find ~ -type d > /home/lu/.config/ctemp
   clear
fi

cd ~
#-----------PS1 PROMPT------------------

# Rainbow
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}\
#%n%{$fg[green]%}@%{$fg[cyan]%}%M %{$\
#fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Rainbow
#PS1="%B%{$fg[yellow]%}\
#%n%{$fg[green]%}@%{$fg[cyan]%}%M %{$\
#fg[blue]%}%~%{$fg[red]%}%{$fg[cyan]%}
#$%b "

# ~
# $ 
#PS1="$fg[magenta]%}%~%{$fg[red]%}%{$fg[cyan]%}
#$%b "

# Minimal with pwd
PS1="%{$fg[blue]%}{%{$fg[magenta]%}\
%~%{$fg[blue]%}}%{$fg[cyan]%}$%b "

# "$"
# PS1="%{$fg[yellow]%}$\
# %{$reset_color%}"


#----------------------------------------------

EDITOR=nvim
SAVEHIST=100000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'm:{A-Za-z}={a-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)              
#bindkey '^ ' autosuggest-accept


[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

source /usr/share/autojump/autojump.zsh
#source /usr/share/zsh/plugins/\
#zsh-vi-mode/zsh-vi-mode.plugin.zsh

source /usr/share/zsh/plugins/\
zsh-syntax-highlighting/\
zsh-syntax-highlighting.zsh \
2>/dev/null

export LC_ALL=en_US.UTF-8
unsetopt prompt_sp
setopt  autocd autopushd pushdignoredups

alias -s {mp4,mkv,flv}="mpv"
alias -s {flac,mp3,opus,ogg,webm}="/usr/bin/mpv --no-video"
alias -s {jpg,jpeg,png}="sxiv"
