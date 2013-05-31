export EDITOR=vim

alias cd2='cd ../../'
alias dict='dict -deng-cze $1'
alias fdict='dict -deng-cze $1 >> /Users/vaclavstrachon/Desktop/words.txt'
alias gca='git commit -a -m $1'
alias git='/usr/local/git/bin/git'
alias ll='ls -al'
alias ltst='ls -alrt'
alias grep='grep --color'
alias pgoogle='ping google.com'
alias ssh='ssh -ACv'

function cs () {
	cd $1
	ls -alF
}

/usr/bin/ssh-add /Users/vaclavstrachon/.ssh/id_dsa
/usr/bin/ssh-add /Users/vaclavstrachon/.ssh/id_rsa
