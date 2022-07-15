# Add homebrew to path
eval "$(/opt/homebrew/bin/brew shellenv)"

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
export PROJECT_HOME=$HOME/Documents
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /Users/siyan/Library/Python/3.8/bin/virtualenvwrapper.sh

# For create-react-app to use default browser
export BROWSER=none
