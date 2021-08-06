#!/usr/bin/env zsh

echo "\nStarting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install httpie
brew install bat

brew install google-chrome
brew install visual-studio-code
