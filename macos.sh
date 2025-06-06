#!/bin/bash

# macos.sh, loose notes for macos system install
# source: https://github.com/katmfoo/dotfiles

# install homebrew
# install iterm2 (default terminal doesn't support truecolor), configure it
#   to pull settings from .config/iterm2
# install docker
# install jetbrains mono
# install neovide
# install vscode, need it for gui step debugging

# bash
brew install bash
brew install bash-completion@2 # is this necessary?
# configure bash as default shell

# core stuffs
brew install git curl ripgrep jq zip unzip httpie htop trash

# tool stuffs
brew install yadm neovim nnn tmux http-prompt mysql-client redis \
    sops git-delta neofetch

# language stuffs
brew install nvm
nvm install 20
nvm alias default 20
brew install php composer

# dotfiles
yadm clone --no-bootstrap https://github.com/katmfoo/dotfiles.git

# make ~/dev folder

# setup prettier
# run `npm install --save-dev prettier @prettier/plugin-php` inside `~/dev`
# run `npm install -g @fsouza/prettierd`

