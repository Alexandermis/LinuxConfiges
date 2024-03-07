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
alias cat='bat --paging=never'
alias python='python3'
alias c='cd'

# Initialize Oh My Zsh
source $~/.oh-my-zsh/oh-my-zsh.sh

# Initialize additional plugins
source $~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $~/Repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
