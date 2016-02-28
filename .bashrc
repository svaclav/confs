export EDITOR=vim
export HISTCONTROL=erasedups

alias ..='cd ../'
alias ...='cd ../../'
alias cl='clear'
alias cp='cp -v'
alias dict='dict -deng-cze $1'
alias ap='apt-get'
alias g='grep -i --color'
alias h='hostname -f'
alias d='df -hT'
alias dp='sudo dpkg -l | grep $1'
alias ii='sudo iptables -L -n'
alias l='ls -alrth'
alias ll='last -Fia | head'
alias m='free -m'
alias n='ncdu'
alias p='ps auxf'
alias s='sudo'
alias t='sudo netstat -tlnp'
alias u='sudo netstat -ulnp'
alias v='vim'
alias mv='mv -v'
alias pp='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias rm='rm -f -v'
alias ssh='ssh -ACv'
alias scp='scp -v'
alias phistory='history | grep $1'
alias pgrep='pgrep -lf'

export PS1='\[\033[38;5;2m\]\u@\[\033[38;5;2m\]\h \[\033[1;33m\]\w\[\033[0m\] \[\e[1;31m\]$(git branch 2> /dev/null | sed -e '/^[^*]/d') $ \[\e[1;37m\]'

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | \
    sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

function .. (){
    local arg=${1:-1};
    local dir=""
    while [ $arg -gt 0 ]; do
        dir="../$dir"
        arg=$(($arg - 1));
    done
    cd $dir #>&/dev/null
    ls -F
}

function au {
    ps auxf | grep $1 | grep -v "grep $1"
}

function cs () {
	cd "$1"
	ls -alF
}

function a() { alias $1=cd\ $PWD; }

function f() { find . -iname '*'$1'*' ; }
