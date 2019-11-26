#!/usr/bin/env bash

# Install homebrew and packages
. brew.sh

# Symlink files to home directory
ln -sfv $(pwd)/.bash_profile ~
ln -sfv $(pwd)/.bash_aliases ~
