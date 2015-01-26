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

# Aliases
alias be="bundle exec "
alias corlog="adb logcat CordovaLog:D *:S"
alias ssl="openssl s_client -connect "

# 9Cookies
# Run this on first install: cd maven-plugins/tomcat-maven-plugin; mvn install; cd ../..
ICASH_WEBAPP_PATH=$HOME/dev/icash-webapp
TOMCAT_PATH=$HOME/dev/tomcat7
alias buildapp="pushd .; cd $ICASH_WEBAPP_PATH; mvn -Pdevelopment -pl manager-webapp,driver-webapp,icash-webapp -am com.9cookies:tomcat-maven-plugin:generate-context; popd"
alias contextmanager="mv $ICASH_WEBAPP_PATH/manager-webapp/target/context.xml $TOMCAT_PATH/conf/Catalina/localhost/manager.xml"
alias contextdriver="mv $ICASH_WEBAPP_PATH/driver-webapp/target/context.xml $TOMCAT_PATH/conf/Catalina/localhost/driver.xml"
alias contexticash="mv $ICASH_WEBAPP_PATH/icash-webapp/target/context.xml $TOMCAT_PATH/conf/Catalina/localhost/icash.xml"
alias tomcat="$TOMCAT_PATH/bin/catalina.sh run"
alias run9c="buildapp && contextmanager && contextdriver && contexticash && tomcat"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

