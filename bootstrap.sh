#!/usr/bin/env bash

# Get current dir (so this script can be run from anywhere)
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# macOS settings
. $DOTFILES_DIR/macos.sh

# Symlink files to home directory
ln -sfv $DOTFILES_DIR/.bash_profile ~
ln -sfv $DOTFILES_DIR/.bash_aliases ~
ln -sfv $DOTFILES_DIR/.bash_prompt ~
source ~/.bash_profile

# Install homebrew and packages
. $DOTFILES_DIR/brew.sh

# VS Code
## Install extensions
. $DOTFILES_DIR/vscode/extensions.sh

## Symlink preferences files
ln -sfv $DOTFILES_DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sfv $DOTFILES_DIR/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# Karabiner
ln -sfv $DOTFILES_DIR/karabiner ~/.config

# Zed
ln -sfv $DOTFILES_DIR/zed/settings.json ~/.config/zed/settings.json
ln -sfv $DOTFILES_DIR/zed/keymap.json ~/.config/zed/keymap.json
ln -sfv $DOTFILES_DIR/zed/snippets ~/.config/zed/snippets