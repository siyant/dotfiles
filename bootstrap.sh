#!/usr/bin/env bash

# Get current dir (so this script can be run from anywhere)
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install homebrew and packages
. brew.sh

# Symlink files to home directory
ln -sfv $DOTFILES_DIR/.bash_profile ~
ln -sfv $DOTFILES_DIR/.bash_aliases ~
ln -sfv $DOTFILES_DIR/macos ~
source ~/.bash_profile

# VS Code
# Install extensions
. $DOTFILES_DIR/vscode/extensions.sh
# Symlink preferences files
ln -sfv $DOTFILES_DIR/vscode/*.json ~/Library/Application\ Support/Code/User

# Karabiner
ln -sfv $DOTFILES_DIR/karabiner ~/.config
