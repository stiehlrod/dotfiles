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
# alias java8='export JAVA_HOME=$JAVA_8_HOME'
# alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias socks='vtk socks setup'
alias ssh_security= ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no -Lport_forwarding_stuff ip_to_connect_to
alias staash='git stash --all'
alias mfa='source /Users/jennicastiehl/Oddball_Github/devops/utilities/issue_mfa.sh $AWS_USERNAME $MFA_TOKEN -v'
# mfa() {
#   source /Users/jennicastiehl/Oddball_Github/devops/utilities/issue_mfa.sh Jennica.Stiehl $1
#   env | grep AWS_ | sed -e 's/^/export /' >> ~/Github/dotfiles/zshrc
# }
# Add Locations to $PATH Variables
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# Homebrew on the M1, where things install to /opt/homebrew
export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init - zsh)"
# export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
# export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
# export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"

# # default to Java 11
# java11
# enable Terminal color
export CLICOLOR=1
LSCOLORS=GxFxCxDxBxegedabagaced

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# https://brew.sh/2020/12/01/homebrew-2.6.0/

# export PATH="/opt/homebrew/opt/icu4c/bin:$PATH"
# export PATH="/opt/homebrew/opt/icu4c/sbin:$PATH"

echo $PATH | grep -q -s "$HOME/bin"
if [ $? -eq 1 ] ; then
    PATH=$HOME/bin:$PATH
    export PATH
fi