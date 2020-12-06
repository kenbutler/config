# Enable tab completion
source ~/git-completion.bash

# Colors
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
RESET="\[\033[0m\]"

# Show/Hide hidden files in Finder window
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Setting PATH for Python 3.5
# TODO
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
# export PATH
PYTHONPATH="~/Library/Python/2.7/bin"
export PYTHONPATH

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/
export PATH="${PATH}:${JAVA_HOME}"

# Maven
export MVN_HOME=/Applications/apache-maven-3.5.4/
export PATH="${PATH}:${MVN_HOME}/bin"
export MAVEN_OPTS="-Xmx2048m -Xms1024M -Xss128M -XX:-UseGCOverheadLimit"
alias mvnQuickBuild="mvn clean install -Dfindbugs.skip=true -DskipTests=true -Dpmd.skip=true -Djacoco.skip=true -DskipTestScope=true -DskipProvidedScope=true -DskipRuntimeScope=true -P\!findbugs -T 2C"
alias mvnQuickBuild_skipStyle="mvn clean install -Dfindbugs.skip=true -DskipTests=true -Dpmd.skip=true -Djacoco.skip=true -DskipTestScope=true -DskipProvidedScope=true -DskipRuntimeScope=true -Dcheckstyle.skip=true -P\!findbugs -T 2C"

# grep aliases
alias adagrep='find . -type f -name '\''*[.ada\|.adb\|.ads]'\'' | xargs grep --color -in  '
alias cppgrep='find . -type f -name '\''*[.h\|.cpp]'\'' | xargs ggrep -R --color -in  '
alias jgrep='find . -type f -name '\''*[.java]'\'' | xargs grep --color -in '
alias pygrep='find . -type f -name '\''*[.py\|.pyc]'\'' | xargs grep --color -in  '
alias xmlgrep='find . -type f -name '\''*[.xml\|.xsd]'\'' | xargs grep --color -in  '
alias pomgrep='find . -type f -name '\''pom.xml'\'' | xargs grep --color --no-messages -in '
alias mgrep='find . -type f -name '\''*[.m]'\'' | xargs grep --color --no-messages -in  '
alias ymlgrep='find . -type f -name '\''*[.yml]'\'' | xargs grep --color --no-messages -in  '
alias fbsgrep='find . -type f -name '\''*[.fbs]'\'' | xargs grep --color --no-messages -in  '

# Postgres aliases
alias postgres_start='pg_ctl -D /usr/local/var/postgres start'
alias postgres_stop='pg_ctl -D /usr/local/var/postgres stop'
alias postgres_auto='brew services start postgresql'

# Used to add colors to output of ls command
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad
# Check ls manpage for more descriptions on these colors

# Git controls and aliases
source ~/git-completion.bash  # Enable tab completion
alias git_sloc='git ls-files | xargs wc -l'

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
#'\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
#export PS1="$RED\u$GREEN\$(__git_ps1)$BLUE \W $ $RESET"
export PS1="$RED\u$YELLOW \W $ $RESET"
#export PS1="$RED obi_wan $YELLOW \W $ $RESET"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function

# Remember SSH keys
alias rememberSSHkeys='ssh-add -K ~/.ssh/id_rsa'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="$HOME/.cargo/bin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
