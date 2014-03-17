export EDITOR=vim

alias ..='cd ../'
alias ...='cd ../../'
alias cp='cp -v'
alias dict='dict -deng-cze $1'
alias gca='git commit -a -m $1'
alias ll='ls -al'
alias ltst='ls -alrt'
alias mv='mv -v'
alias grep='grep --color'
alias pp='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias rm='rm -f -v'
alias ssh='ssh -ACv'
alias scp='scp -v'
alias phistory='history | grep $1'
alias pgrep='pgrep -lf'

function cs () {
	cd $1
	ls -alF
}
