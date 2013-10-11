export EDITOR=vim

alias ..='cd ../'
alias ...='cd ../../'
alias dict='dict -deng-cze $1'
alias gca='git commit -a -m $1'
alias ll='ls -al'
alias ltst='ls -alrt'
alias grep='grep --color'
alias p8='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias ssh='ssh -ACv'
alias phistory='history | grep $1'

function cs () {
	cd $1
	ls -alF
}
