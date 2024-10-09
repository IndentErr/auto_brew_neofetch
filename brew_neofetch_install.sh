#!/bin/bash 

cd ~
git clone https://github.com/Homebrew/brew homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
touch .zshrc
brew install neofetch
echo "neofetch --cpu_temp C" >> .zshrc
neofetch --cpu_temp C
echo "This is neofetch"
