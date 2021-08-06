# Change ZSH Options

# Customize Prompts
PROMPT='%1~ %L %# '
RPROMPT='%*'

# Functions
function mkcd() {
mkdir -p "$@" && cd "$_";
}

# ZSH Plugins

# Set Variables
# Syntax highlighter for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options

# Create Alias
## exa: User-friendly cURL replacement (command-line HTTP client)
alias ls='exa -laFH --git'
alias exa='exa -laFH --git'

# Add Locations to $PATH Variables
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
