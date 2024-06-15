Dotfiles by Victor Hugo M. Pinto
-------------------------------------

This directory stores configuration files for my macOS environment with easy
install scripts for setting up a new Mac and to make my macOS environment available
anywhere.

## Xcode Command Line Tools  ##

In order to use this dotfiles, first you should install Xcode Comand Line tools
if on a brand new Mac or you haven't used it yet.
Run this in your terminal:

```
$ xcode-select --install
```
or simply a `make` command will prompt you to install it too.

## Setting Up Environment  ##

First, clone this repository in your home directory:

```
$ git clone https://github.com/victorhmp/dotfiles
```

### Homebrew, utilities and apps setup  ###

To install Homebrew (and brew cask) and use `brew install` to install some
utilities for development and `brew cask install` to install some macOS
applications right from the terminal, run:

```
~/dotfiles$ sh brew.sh
```

### Zsh shell Setup ###

To install Zsh, select it as default shell and install oh-my-zsh framework for
managing it, along with the awesome PowerLine9K theme.

```
~/dotfles$ sh ohmyzsh.sh
```

### Install Vundle plugin manager for Vim  ###
Vim plugins are managed with [Vundle](http://github.com/VundleVim/Vundle.Vim).
To install it and use the plugins on my vimrc file, simply run:

```
~/dotfiles$ sh install-vundle.sh
```
To install the plugins from my vimrc, open vim and use `:PluginInstall` then
quit Vim and all Plugins should be working.

### Using my dotfiles  ###
OK, enough with the scripts... just one more to go.
To finally create symlinks from this dotfiles directory to the home directory
and start using all of the configuration files in this repository, just run:

```
~/dotfiles$ sh create-symlinks.sh
```
After running it, you should see a new directory `dotfiles_old` in your home
directory and you should see symlinks to dotfiles using `$ ls -a`.

By now, you should close terminal app and open it again so that changes take
effect.

## iTerm2  ##
The iTerm2-config folder contains all setup files that I use on my terminal.
To setup iTerm2, first you should choose the right colorscheme: `iTerm2 ->
Preferences -> Profiles -> Colors -> Color Presets -> Import` and go to the
iTerm2-config file and select `gruvbox-dark.itermcolors`, then open `Color
Presects` selector again and select gruvbox-dark. Much better!

Let's also install an amazing font! First, lets install the font into your
system: 

```
~/dotfiles/iTerm2-config$ open SourceCodePro/Source\ Code\ Pro\ Nerd\ Font\ Complete.ttf
```
Next, we just need to select the font: `iTerm2 ->
Preferences -> Profiles -> Text -> Font` and select Source Code Pro Nerd Font
Complete (works best at 13pt size).

There is just one more thing to make iTerm2 and Vim look awesome. Let's remove
that ugly highlight from comments and make them italic! And there's a script for
that, obviously... Just run (from inside the iTerm2-config folder):

```
~/dotfiles/iTerm2-config$ sh setup-italics.sh
```
OK! Now your iTerm2 should look awesome! =D

## macOS defaults  ##
This repository includes a `.macos` file with some convenient configuration for
your system, specially usefull for setting up a new Mac. If you just want my
configuration (you should really take a look at the .macos file and see what it
does), you can just run:

```
~/dotfiles$ sh ./.macos
```
After running the script, you should restart your Mac and evrything should be
configured.

Note: If you want to make your own `.macos` file, check out [Mathias Byrens' macOS defaults script](https://github.com/mathiasbynens/dotfiles/blob/master/.macos), probably the best reference you can find for setting macOS defaults via script.

