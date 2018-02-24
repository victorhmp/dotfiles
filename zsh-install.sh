# Install zsh shell
brew install zsh zsh-completions

# Make zsh default shell
sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)

