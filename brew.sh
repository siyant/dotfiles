#!/usr/bin/env bash

# Install Homebrew or make sure it's up to date
which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Updating homebrew"
  brew update
  brew upgrade
fi

echo "Installing brew and cask packages from Brewfile"
brew bundle

echo "Switching default shell to brew-installed one"
BREW_PREFIX=$(brew --prefix)
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

echo "Running brew cleanup"
brew cleanup
