
# sudo port install git-core +bash_completion
. /opt/local/share/git-core/git-prompt.sh

PS1="[\$(date +%k:%M:%S)] \u@macbook\$(__git_ps1 \" (%s)\") \w\$ "
export PS1

# Paths
MACPORTS=/opt/local/bin:/opt/local/sbin
GNU_COREUTILS=/opt/local/libexec/gnubin
MYSQL=/usr/local/mysql/bin
POSTGRES=/opt/local/lib/postgresql92/bin
HOME_BIN=$HOME/.local/bin
PEAR_BIN=/opt/local/lib/php/pear/bin
ANDROID=$HOME/Development/adt-bundle-mac-x86_64/sdk/platform-tools:$HOME/Development/adt-bundle-mac-x86_64/sdk/tools
CORDOVA=$HOME/Development/android-cordova/bin
export PATH=$MACPORTS:$GNU_COREUTILS:$MYSQL:$HOME_BIN:$PEAR_BIN:$POSTGRES:$ANDROID:$CORDOVA:$PATH

export CLICOLOR=1


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
