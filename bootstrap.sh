#!/usr/bin/env bash

# Get current dir (so this script can be run from anywhere)
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# macOS settings
. macos.sh

# Symlink files to home directory
ln -sfv $DOTFILES_DIR/.bash_profile ~
ln -sfv $DOTFILES_DIR/.bash_aliases ~
ln -sfv $DOTFILES_DIR/.bash_prompt ~
source ~/.bash_profile

# Install homebrew and packages
. brew.sh

# VS Code
## Install extensions
. $DOTFILES_DIR/vscode/extensions.sh

## Symlink preferences files
ln -sfv $DOTFILES_DIR/vscode/*.json ~/Library/Application\ Support/Code/User

# Karabiner
ln -sfv $DOTFILES_DIR/karabiner ~/.config
