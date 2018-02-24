#!/bin/bash

# Install Zsh
brew install zsh zsh-completions

# Make Zsh default shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

# Install Oh-My-Zsh framework
rm -rf ~/.oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install Powerlevel9K theme to Zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
