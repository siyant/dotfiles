#!/usr/bin/env bash

# Install homebrew and packages
. brew.sh

# Symlink .bash_profile
ln -sfv $(pwd)/.bash_profile ~
