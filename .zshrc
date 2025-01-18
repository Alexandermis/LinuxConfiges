# Configuration for Zsh
tmux
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
# Zeitstempel
HIST_STAMPS="dd.mm.yyyy"

# Custom Aliases
#alias cat='bat --paging=never'
alias python='python3'
alias c='cd'
alias v='vim &1'
alias cl='cd &1 && ls'

# Initialize Oh My Zsh
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# Initialize additional plugins
source $HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.oh-my-zsh/custom/plugins/zsh-highlighting/zsh-syntax-highlighting.zsh
