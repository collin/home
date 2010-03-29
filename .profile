#!/bin/bash

# MacPorts Installer addition on 2009-08-03_at_13:54:37: adding an appropriate PATH variable for use with MacPorts.
# export PATH=/opt/local/bin:/opt/local/sbin:/User/iMac4/.rvm/bin/bin::$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-08-03_at_13:54:37: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PGDATA=/usr/local/pgsql/data/

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Define some colors first:
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m' # No Color

source /usr/local/etc/bash_completion.d/git-completion.bash

function myip {
  ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2
}

export PS1="\n$blue\w $red\$(__git_ps1 "%s") $cyan\$rvm_ruby_string$NC \$(myip)\n"

export PATH="/Users/iMac4/.rvm/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:~/bin:/Users/iMac4/.gem/ruby/1.8/bin:/opt/local/lib/postgresql84/bin/:/usr/local/mysql/bin"

alias reload="source ~/.profile"
alias profile="mate ~/.profile"
alias ipy="rlwrap --history-filename ~/.python_history python"

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
  
export PYTHONPATH='/Users/iMac4/.rvm/bin:~/Downloads/diff_match_patch/python/:~/Code/permalink:~/Code/permalink/lib/django-haystack:~/Downloads/selenium-remote-control-1.0.1/selenium-python-client-driver-1.0.1'
export DJANGO_SETTINGS_MODULE='permalink.settings'
export PERPETUALLY_ENVIRONMENT='collin'

export JAVA_HOME=/Library/Java/Home
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/jre/lib/i386:$JAVA_HOME/jre/lib/i386/client
export GEM_HOME=~/.gem/ruby/1.8/

alias ☃="gem bundle"
alias git-log="git log --stat"
alias git-merge="git merge --no-ff"
alias ls="ls -lah"
alias rake="rake --trace"
alias pretty_js="java org.mozilla.javascript.tools.shell.Main ~/Downloads/einars-js-beautify-d406247/beautify-cl.js"
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

