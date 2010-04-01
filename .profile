#!/bin/bash
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

source .ps1

export PATH="~/.rvm/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:~/bin:~/.gem/ruby/1.8/bin:/opt/local/lib/postgresql84/bin/:/usr/local/mysql/bin"


complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
  
export JAVA_HOME=/Library/Java/Home
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JAVA_HOME/jre/lib/i386:$JAVA_HOME/jre/lib/i386/client
export GEM_HOME=~/.gem/ruby/1.8/

alias reload="source ~/.profile"
alias profile="mate ~/.profile"
alias ☃="gem bundle"
alias git-log="git log --stat"
alias git-merge="git merge --no-ff"
alias ls="ls -lah"
alias rake="rake --trace"
alias flow="git flow"
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

