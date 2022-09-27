#!/bin/bash
yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Casts
brew install --cask git node yarn npm
# password protection app
brew install --cask authy
brew install --cask docker
brew install --cask dropbox
brew install --cask google-backup-and-sync
brew install --cask google-chrome
# terminal app
brew install --cask iterm2
# auto suggest for terminal
brew install --cask fig
# screen recorder
brew install --cask kap
# Postgrest Management Console
brew install --cask postico
# Chat app
brew install --cask slack
# IDE
brew install --cask visual-studio-code
# video viewer
brew install --cask vlc

# Copy dotfiles to user's home directory
cp -a ./dotfiles/. ~/

# Make a screenshots directory and set system to write to it
mkdir ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots

# Show all hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Restart finder
killall SystemUIServer
killall Finder

# Make a code folder
directory=~/Documents/code.nosync
if [ -d "$directory" ]
then
    echo "$directory exists on your filesystem."
    
else
    echo "$directory does not exist"
    mkdir $directory
fi

