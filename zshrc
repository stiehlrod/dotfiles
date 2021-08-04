# Set Variables

# Change ZSH Options

# Create Alias
alias ls='ls -a'

# Customize Prompts
PROMPT='%1~ %L %# '
RPROMPT='%*'

# Add Locations to $PATH Variables

# Functions
function mkcd() {
mkdir -p "$@" && cd "$_";
}

# ZSH Plugins

