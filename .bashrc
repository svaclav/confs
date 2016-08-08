export EDITOR=vim
export HISTCONTROL=erasedups

alias ...='cd ../../'
alias cl='clear'
alias cp='cp -v'
alias dict='dict -dfd-eng-cze $1'
alias ap='sudo apt-get'
alias g='sudo grep -i --color'
alias h='hostname -f'
alias d='df -hT'
alias dp='sudo dpkg -l | grep $1'
alias ii='sudo iptables -L -n'
alias l='ls -alrth'
alias ll='last -Fia | head'
alias m='free -h'
alias n='sudo ncdu -x /'
alias p='sudo ps auxf'
alias s='sudo'
alias t='sudo netstat -tlnp'
alias u='sudo netstat -ulnp'
alias v='sudo vim'
alias mv='mv -v'
alias pp='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias rm='rm -f -v'
alias ssh='ssh -ACv'
alias scp='scp -v'
alias phistory='history | grep $1'
alias pgrep='sudo pgrep -lf'
alias moon='gcal --holiday-list --astronomical-holidays'

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
    sudo ps auxf | grep $1 | grep -v "grep $1"
}

function cs () {
	cd "$1"
	ls -alF
}

function a() { alias $1=cd\ $PWD; }

function f() { sudo find . -iname '*'$1'*' ; }

function ips () {
  sudo lsof -i -n | grep -oP ">(\d{1,3})(\.\d{1,3}){3}" | sort | uniq -c | sort
}


function jsn () {
        python -m json.tool
}

function ta {
        sudo tac $1 | less
}
