#!/usr/bin/env bash
# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names
brew install vim --with-override-system-vi
brew install grep

brew install zsh
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install starship
brew install fzf
brew install autojump
brew install exa

brew install git
brew install node

# Remove outdated versions from the cellar
brew cleanup
