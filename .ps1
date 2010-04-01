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