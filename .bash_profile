export EDITOR=vim

alias ..='cd ../'
alias ...='cd ../../'
alias cd2='cd ../../'
alias dict='dict -deng-cze $1'
alias egoogle='elinks www.google.com'
alias fdict='dict -deng-cze $1 >> /Users/vaclavstrachon/Desktop/words.txt'
alias gca='git commit -a -m $1'
alias git='/usr/local/git/bin/git'
alias gtfman='cd /Users/vaclavstrachon/Work/gtflix/gtflix/manifests'
alias ll='ls -al'
alias ltst='ls -alrt'
alias grep='grep --color'
alias p8='ping 8.8.8.8'
alias pgoogle='ping google.com'
alias ssh='ssh -ACv'
alias vuln='elinks http://lwn.net/Vulnerabilities/'
alias hnews='elinks http://news.ycombinator.com'
alias stories='elinks http://wencaaa.devio.us/stories.html'
alias phistory='history | grep $1'

function cs () {
	cd $1
	ls -alF
}

function dvuln {
	cd /Users/vaclavstrachon/dvuln
	wget http://lwn.net/Vulnerabilities/
	vulnid=$(egrep kernel -B 2 index.html | egrep [0-9]{6} | cut -d / -f 3)
        clear
        echo "http://lwn.net/Vulnerabilities/$vulnid" | lynx -
}
/usr/bin/ssh-add /Users/vaclavstrachon/.ssh/id_dsa
/usr/bin/ssh-add /Users/vaclavstrachon/.ssh/id_rsa