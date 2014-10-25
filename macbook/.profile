
# sudo port install git-core +bash_completion
. /opt/local/share/git/git-prompt.sh

PS1="[\$(date +%k:%M:%S)] \u@macbook\$(__git_ps1 \" (%s)\") \w\\n$ "
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
NODEJS=$HOME/node_modules/.bin:$HOME/.npm-packages/bin:./node_modules/.bin
EDITOR=vim
export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
export PATH=$MACPORTS:$GNU_COREUTILS:$MYSQL:$HOME_BIN:$PEAR_BIN:$POSTGRES:$ANDROID:$CORDOVA:$HEROKU:$NODEJS:$JAVA_HOME/bin:$PATH

export CLICOLOR=1

# Aliases
alias be="bundle exec "
alias corlog="adb logcat CordovaLog:D *:S"

