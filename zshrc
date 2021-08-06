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
# Change ZSH Options

# Create Alias
alias ls='ls -lAFh'

# Add Locations to $PATH Variables
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
