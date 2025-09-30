#!/bin/bash

# macos.sh, loose notes for macos system install
# source: https://github.com/katmfoo/dotfiles

# set trackpad "tracking speed" to fastest
# set keyboard "key repeat rate" to fastest
# set keyboard "delay until repeat" to shortest
# set finder sidebar to only desired directories
# set dock to auto hide
# turn off "show suggested and recent apps in dock"
# turn off auto caps and spell check

# install google chrome, set as default web browser
# install 1password
# install spotify
# install obsidian
# install discord
# install iterm2 (default terminal app doesn't support truecolor)
# install neovide
# install docker desktop
# install jetbrains mono
# install datagrip
# install vscode
# install slack
# install zoom
# install photoshop
# install xcode
# install android studio
# install karabiner elements (config in dotfiles)
# install amphetamine (keep screen awake)
# install monitorcontrol (control dell monitor via mac hotkeys)
# install mos (otherwise non app mouse scrolling is terrible)

# setup dock as desired

# install homebrew

# bash
brew install bash
echo "/opt/homebrew/bin/bash" | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash

# dotfiles (git required for something in .bashrc, gnupg/less required for
# yadm bootstrap script)
brew install git gnupg less yadm
yadm clone --no-bootstrap https://github.com/katmfoo/dotfiles.git
yadm bootstrap

# tool stuffs
brew install neovim nnn tmux ripgrep http-prompt git-delta neofetch

# language stuffs
brew install nvm
nvm install 20
nvm alias default 20
brew install php composer

# make ~/dev folder

# setup prettier
# run `npm install --save-dev prettier @prettier/plugin-php` inside `~/dev`
# run `npm install -g @fsouza/prettierd`

                      # fitdegree
                      brew install sops











                           # configure iterm2 to pull settings from .config/iterm2 and save edits
                           # automatically




# KAT TODO: add ~/.config/karabiner/karabiner.json to dotfiles
# KAT TODO: does everything with caps key feel okay? if not, maybe i need to copy the
# KAT TODO: get rid of stuff from top right bar?
# KAT TODO: do final organization of dock
# KAT TODO: install jetbrains mono
# number settings from old mac as well?




# setup mailbox repo and open in obsidian

