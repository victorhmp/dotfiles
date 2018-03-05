#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install the Homebrew packages I use on a day-to-day basis.
apps=(
    node
    cask
    rvm
    nvm
    bash-completion2
    coreutils
    findutils
    git
    git-extras
    hub
    gnu-sed --with-default-names
    grep --with-default-names
    homebrew/completions/brew-cask-completion
    homebrew/dupes/grep
    homebrew/dupes/openssh
    autojump
    python3
    source-highlight
    tree
    wget
    wifi-password
)
brew install "${apps[@]}"

# Install important macOS applications to save time on initial setup
brew cask install docker
brew cask install google-chrome
brew cask install spotify
brew cask install visual-studio-eode
brew cask install iterm2
brew cask install skim

# Remove outdated versions from the cellar
brew cleanup
