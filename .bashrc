export EDITOR=vim
export HISTCONTROL=erasedups

alias ...='cd ../../'
alias cl='clear'
alias cp='cp -v'
alias dict='dict -dfd-eng-cze $1'
alias ap='apt-get'
alias g='grep -IRi --color'
alias h='hostname -f'
alias d='df -hT'
alias dp='dpkg -l | grep $1'
alias ii='iptables -L -n'
alias l='ls -alrth'
alias ll='last -Fia | head'
alias m='free -h'
alias n='ncdu -x /'
alias p='ps auxf'
alias s='sudo '
alias t='netstat -tlnp'
alias u='netstat -ulnp'
alias v='vim'
alias mv='mv -v'
alias pp='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias rm='rm -f -v'
alias ssh='ssh -ACv'
alias scp='scp -v'
alias passphrase='grep -oP '[a-z]{10}' /usr/share/dict/words | sed -n -e "$((RANDOM*3))p" -e "$((RANDOM*3))p" -e "$((RANDOM*3))p" | tr "\n" " "'
#alias passphrase='nodejs --use_strict niceware | tr "," " "'
alias phistory='history | grep $1'
alias pgrep='pgrep -lf'
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
    ps auxf | grep $1 | grep -v "grep $1"
}

function cs () {
	cd "$1"
	ls -alF
}

function a() { alias $1=cd\ $PWD; }

function f() { find . -iname '*'$1'*' ; }

function ips () {
  lsof -i -n | grep -oP ">(\d{1,3})(\.\d{1,3}){3}" | sort | uniq -c | sort
}


function jsn () {
        python -m json.tool
}

function ta {
        tac $1 | less
}

function tst() {
    date -d @"$1"
}

man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

#ctrl-s works finally
stty -ixon
