
. /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
PS1='\u@macbook$(__git_ps1 " (%s)") \w\$ '
export PS1

# Paths
MACPORTS=/opt/local/bin:/opt/local/sbin
GNU_COREUTILS=/opt/local/libexec/gnubin
MYSQL=/usr/local/mysql/bin
export PATH=$MACPORTS:$GNU_COREUTILS:$MYSQL:$PATH

export CLICOLOR=1

