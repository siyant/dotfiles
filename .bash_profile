# Add homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home

# Set up autojump
[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Add aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Custom bash prompt (from https://github.com/jimeh/git-aware-prompt)
export GITAWAREPROMPT=~/.bash_prompt
source "${GITAWAREPROMPT}/main.sh"

# Java
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export MAVEN_HOME=/Library/apache-maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH

# Python
export PATH=/Users/siyan/Library/Python/3.8/bin:$PATH
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source virtualenvwrapper.sh

# For create-react-app to use default browser
export BROWSER=none

export PATH=$PATH:/usr/local/Cellar/node/13.12.0/bin:/Applications/flutter/bin

export PATH=/usr/local/Cellar/ruby/2.7.2/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/Cellar/python@3.9/3.9.2_1/Frameworks/Python.framework/Versions/3.9/bin:$PATH"

export MAVEN_HOME=/Library/apache-maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH

export ANDROID_SDK_ROOT=/Users/siyan/Library/Android/sdk

export PATH=/opt/homebrew/opt/make/libexec/gnubin:$PATH

# Remove "xxx is an application downloaded from the internet" warning
export HOMEBREW_CASK_OPTS=--no-quarantine
eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"

# pnpm
export PNPM_HOME="/Users/siyan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

