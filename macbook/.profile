
. /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
PS1='\u@macbook$(__git_ps1 " (%s)") \w\$ '
export PS1

# Paths
MACPORTS=/opt/local/bin:/opt/local/sbin
MYSQL=/usr/local/mysql/bin
export PATH=$MACPORTS:$MYSQL:$PATH

