export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Add aliases
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# For virtualenv & virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# For create-react-app to use default browser
export BROWSER=none

export PATH=$PATH:/usr/local/Cellar/node/13.12.0/bin:/Applications/flutter/bin
eval "$(rbenv init -)"

export PATH=/usr/local/Cellar/ruby/2.7.2/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$PATH
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/Cellar/python@3.9/3.9.2_1/Frameworks/Python.framework/Versions/3.9/bin:$PATH"

export MAVEN_HOME=/Library/apache-maven-3.6.3
export PATH=$MAVEN_HOME/bin:$PATH
