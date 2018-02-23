Dotfiles by Victor Hugo M. Pinto
-------------------------------------

This directory stores configuration files for my macOS environment with easy
install scripts for setting up a new Mac and to make my setup available
anywhere.

In order to use this dotfiles, just clone this repository in your home
directory:

```
git clone https://github.com/victorhmp/dotfiles
```

Then, run:

```
sh install.sh
```
to create symlinks in the home directory and move any existing dotfiles in
homedir to 'dotfiles_old' directory and install Homebrew and Vundle for Vim.

Run:

```
sh zsh-install
```
to install and set Zsh as default shell.

Run: 

```
sh ohmyzsh.sh
```
to install oh-my-zsh and PowerLevel9K theme.

## macOS defaults  ##
Run: 

```
./.macos
```
to setup some macOS defaults on a new Mac.

## iTerm2  ##
The iTerm2-config folder contains all setup files that I use on my terminal.
That are no install scripts for this setup.

## Vim plugins ##

Vim plugins are managed with [Vundle](http://github.com/VundleVim/Vundle.Vim).
The full list of plugins is available at .vimrc.

