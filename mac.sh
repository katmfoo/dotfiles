# mac.sh, sets up my macOS environment
# author: Patrick Richeal
# last modified: 3/28/2018
# source: https://github.com/pricheal/dotfiles

# ==================================================
# dev stuff installs
# ==================================================

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install homebrew things
brew install node
brew install homebrew/php/composer

# node installs
npm install -g bower

# ==================================================
# app installs
# ==================================================

# install homebrew cask
brew tap caskroom/cask

# install macOS apps
brew cask install google-chrome
brew cask install musescore
brew cask install spotify
brew cask install discord
brew cask install dashlane
brew cask install filezilla
brew cask install postman
brew cask install mysqlworkbench
brew cask install iterm2
brew cask install visual-studio-code
brew cask install google-backup-and-sync

# install homebrew mas
brew install mas

# install macOS app store apps
mas install 634148309 # logic pro 10.4.1
mas install 497799835 # xcode 9.2

# update installed macOS app store apps
mas upgrade

# ==================================================
# system settings
# ==================================================

# change computer name
sudo scutil --set ComputerName pats-macbook

# get account name
currentUser=`ls -l /dev/console | cut -d " " -f4`

# enable battery percentage
sudo -u $currentUser defaults write com.apple.menuextra.battery ShowPercent YES
sudo -u $currentUser killall SystemUIServer

# set default directory for new finder window to home directory
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/$currentUser/"

# disable natural trackpad scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# make apps minimize into their icon on dock
defaults write com.apple.dock minimize-to-application -bool true

# auto show/hide the dock
defaults write com.apple.dock autohide -bool true

# ==================================================
# git stuff
# ==================================================

# set global identity info
git config --global user.email "patrickricheal@gmail.com"
git config --global user.name "Patrick Richeal"

# ==================================================
# bash
# ==================================================

# run bash setup script
./bash.sh
