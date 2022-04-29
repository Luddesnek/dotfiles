autoload -U colors && colors

# Rainbow
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Minimal
PS1="%{$fg[blue]%}{%{$fg[magenta]%}%~%{$fg[blue]%}}%{$reset_color%}$%b "
# PS1="%{$fg[blue]%}{%{$fg[magenta]%}%n %{$fg[magenta]%}%~%{$fg[blue]%}}%{$reset_color%}$%b "
EDITOR=nvim

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
#setopt appendhistory

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)              
bindkey '^ ' autosuggest-accept

[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
