# exports
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/home/mrx/.local/bin"

# tmux autostart 
[ -z "$TMUX" ] && exec tmux

# Theme
ZSH_THEME="bira"

# Plugins
plugins=(
    git
    zsh-autosuggestions
)


# source
source $ZSH/oh-my-zsh.sh
source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/Repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# alias
alias ls=lsd
alias cat='bat --paging=never'


