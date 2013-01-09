
. /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
PS1='\u@macbook$(__git_ps1 " (%s)") \w\$ '
export PS1

# Paths
MACPORTS=/opt/local/bin:/opt/local/sbin
GNU_COREUTILS=/opt/local/libexec/gnubin
MYSQL=/usr/local/mysql/bin
POSTGRES=/opt/local/lib/postgresql92/bin
HOME_BIN=$HOME/.local/bin
PEAR_BIN=/opt/local/lib/php/pear/bin
export PATH=$MACPORTS:$GNU_COREUTILS:$MYSQL:$HOME_BIN:$PEAR_BIN:$POSTGRES:$PATH

export CLICOLOR=1


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
