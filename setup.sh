#!/bin/bash
yes '' | /usr/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Casts
brew install git 
brew install node 
brew install yarn 
brew install npm
# password protection app
brew install --cask authy
brew install --cask docker
brew install --cask dropbox
# browser
brew install --cask google-chrome
# terminal app
brew install --cask iterm2
# auto suggest for terminal
brew install --cask fig
# screen recorder
brew install --cask kap
# Postgrest Management Console
brew install --cask postico
# video viewer
brew install --cask vlc

# Chat app
while true; do
    read -p "Which chat app do you use? [Slack|Teams|Both] " idea
    case $ide in
        [Ss]* ) brew install --cask slack; break;;
        [Tt]* ) brew install --cask microsoft-teams; break;;
        [Bb]* ) brew install --cask slack; brew install --cask microsoft-teams; break;;
        * ) echo "No chat apps installed"; exit;
    esac
done


# IDE
while true; do
    read -p "Choose your IDE? [VScode|IntelliJ] " idea
    case $ide in
        [Vv]* ) brew install --cask visual-studio-code; break;;
        [Ii]* ) brew install --cask intellij-idea; break;;
        * ) echo "No IDE was installed"; exit;
    esac
done


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

