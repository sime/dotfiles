# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# sudo port install git +bash_completion
. /opt/local/share/git/git-prompt.sh

PS1="[\$(date +%k:%M:%S)] \u@macbook\$(__git_ps1 \" (%s)\") [\j] \w\\n$ "
export PS1

# Paths
MACPORTS=/opt/local/bin:/opt/local/sbin
GNU_COREUTILS=/opt/local/libexec/gnubin
MYSQL=/usr/local/mysql/bin
POSTGRES=/opt/local/lib/postgresql92/bin
HOME_BIN=$HOME/.local/bin
PEAR_BIN=/opt/local/lib/php/pear/bin
# sudo port install android
ANDROID=/opt/local/share/java/android-sdk-macosx/platform-tools:/opt/local/share/java/android-sdk-macosx/tools
CORDOVA=$HOME/Development/android-cordova/bin
HEROKU=/usr/local/heroku/bin
NODEJS=$HOME/.npm-packages/bin:./node_modules/.bin
EDITOR=vim
# Only works after installing JDK 7
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export PATH=$MACPORTS:$GNU_COREUTILS:$MYSQL:$HOME_BIN:$PEAR_BIN:$POSTGRES:$ANDROID:$CORDOVA:$HEROKU:$NODEJS:$JAVA_HOME/bin:$PATH

export CLICOLOR=1

DYLD_LIBRARY_PATH=/usr/local/mysql/lib
export DYLD_LIBRARY_PATH

export GREP_OPTIONS="--color=auto"
export LESS="-R"

# Aliases
alias be="bundle exec "
alias corlog="adb logcat CordovaLog:D *:S"
alias ssl="openssl s_client -connect "
alias blowsync="rsync -Pav -e 'ssh -c blowfish' $1"
alias rp="ssh -R 3001:localhost:3000 $1"
alias updatebg="unsplash desktop --random"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

