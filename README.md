# Dotfiles

This directory stores configuration files for my macOS environment with easy
install scripts for setting up a new Mac and to make my macOS environment available
anywhere.

## Xcode Command Line Tools

In order to use this dotfiles, first you should install Xcode Comand Line tools
if on a brand new Mac or you haven't used it yet.
Run this in your terminal:

```bash
xcode-select --install
```

or simply a `make` command will prompt you to install it too.

## Setting Up Environment

First, clone this repository in your home directory:

```bash
git clone https://github.com/victorhmp/dotfiles
```

## Homebrew

To install [Homebrew](https://brew.sh/), just run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After installing Homebrew, you can install all the packages listed in the
Brewfile from this repository by running:

```bash
brew bundle --file=~/dotfiles/homebrew/Brewfile
```

## Symbolic Links

To actually use the configuration files in this repository, you need to symlink
them to your home directory. And to make that easy, I use [`GNU Stow`](https://www.gnu.org/software/stow/).

The files in this repository are organized in a way that `stow` can easily
create symlinks to them where they're expected to be. Here's an example, where
I'm going to use the Alacritty setup here:

```bash
stow alacritty
```

This will create a symlink for all files inside `~/dotfiles/alacritty` to `~/.config/alacritty`.

## macOS defaults

To get macOS settings from `/macos`, you actually have to run the `.macos` file
as a script:

```bash
sh ./macos/.macos
```

After running the script, you should restart your Mac and everything should be
configured.

Note: If you want to make your own `.macos` file, check out [Mathias Byrens' macOS defaults script](https://github.com/mathiasbynens/dotfiles/blob/master/.macos), probably the best reference you can find for setting macOS defaults via script.
