# Configuration for Zsh

# Export variables
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"

# Check if tmux is running, and start it if not
[ -z "$TMUX" ] && exec tmux

# Theme selection
ZSH_THEME="bira"

# Plugins
plugins=(
    git
    zsh-autosuggestions
)

# Custom Aliases
alias ls='lsd'
alias cat='batcat --paging=never'
alias python='python3'
alias c='cd'

# Initialize Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Initialize additional plugins
source $HOME/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/Repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
