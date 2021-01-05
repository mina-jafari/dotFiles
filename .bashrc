# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

#alias rm="rm -i"
#alias mv="mv -i"
#alias cp="cp -i"

set prompt='$HOSTNAME: '
alias properties='ls -l * | wc -l; du -chs'
alias ls='ls -BFCh --color'
#alias ll='ls -BFChl --color'
alias ll='ls -ltr --color'
alias la='ls -BFCha --color'
alias lla='ls -BFChla --color'
alias qgpu='qstat @nfs-0-c:35000'
alias loadshell='source ~/.bashrc'
alias untar='tar -xzf'

#for quick file removal
shopt -s extglob
#set terminal as vi
set -o vi
export PATH=~/bin/:$PATH
