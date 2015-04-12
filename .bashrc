export EDITOR=vim
export HISTCONTROL=erasedups

alias ..='cd ../'
alias ...='cd ../../'
alias cl='clear'
alias cp='cp -v'
alias dict='dict -deng-cze $1'
alias g='git'
alias d='df -hT'
alias l='ls -alrth'
alias p='pstree'
alias t='sudo netstat -tlnp'
alias u='sudo netstat -ulnp'
alias mv='mv -v'
alias grep='grep --color'
alias pp='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias rm='rm -f -v'
alias ssh='ssh -ACv'
alias scp='scp -v'
alias phistory='history | grep $1'
alias pgrep='pgrep -lf'

function .. (){
    local arg=${1:-1};
    local dir=""
    while [ $arg -gt 0 ]; do
        dir="../$dir"
        arg=$(($arg - 1));
    done
    cd $dir #>&/dev/null
}

function au {
    ps auxf | grep $1 | grep -v "grep $1"
}

function cs () {
	cd "$1"
	ls -alF
}

function a() { alias $1=cd\ $PWD; }

function ff() { find . -iname '*'$1'*' ; }
