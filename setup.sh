#!/bin/bash
yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
brew install node
brew install git node yarn
brew cask install authy
brew cask install docker
brew cask install dropbox
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install iterm2
brew cask install kap
brew cask install postico
brew cask install slack
brew cask install visual-studio-code
brew cask install vlc

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

