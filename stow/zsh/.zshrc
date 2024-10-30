

export ZSH=/home/jfuller/.oh-my-zsh
ZSH_THEME="agnoster"

export HISTSIZE=0
setopt correct
setopt APPEND_HISTORY
setopt share_history

source $ZSH/oh-my-zsh.sh

export EDITOR=$(which emacs)
LC_CTYPE=en_US.UTF-8
export LC_CTYPE
LC_ALL=en_US.UTF-8
export LC_ALL

# emacs alias
alias debugemacs='open -a Emacs.app --args --debug-init'

# all the rest alias
alias clear_history='echo "" > ~/.zsh_history & exec $SHELL -l'
alias remember='emacsclient -e "(make-capture-frame)"'
alias hex="od -A x -h"
alias ls="ls -lFGA"
alias pu='pushd'
alias po='popd'
alias c='clear'
alias j='jobs'
alias h='history'
alias more='less -X -L'
alias less='less -X -L'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias findbig='find . -type f -exec ls -s {} \; | sort -n -r | head -5'
alias httpmirror='wget --mirror'
alias loc='wc -l'
alias enable_camara='sudo mv /Users/jimfuller/.isight/QuickTimeUSBVDCDIgitizer.component /System/Library/QuickTime/.'
alias disable_camara='sudo mv /System/Library/QuickTime/QuickTimeUSBVDCDIgitizer.component /Users/jimfuller/.isight/.'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"  # Directory tree
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias psg="ps -e | grep"
alias dnstime="curl -w 'dnslookup: %{time_namelookup} | connect: %{time_connect} | appconnect: %{time_appconnect} | pretransfer: %{time_pretransfer} | starttransfer: %{time_starttransfer} | total: %{time_total} | size: %{size_download}\n'"
alias ff='find . -type f -name'
alias h='history'
alias t='tail -f'
alias l='ls -lFh'     #size,show type,human readable
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias weather='curl http://wttr.in/'
alias nixfind='nix-env -qaP|grep -i '
alias cheat="/usr/local/bin/cht.sh"
alias cat="bat"
alias rgf='rg --files | rg'

# git alias
alias gs="git status"
alias gsl="git stash list"
alias gb="git branch"
alias gdiff="git diff"
alias gd="git icdiff"
alias gc="git checkout"
alias gl="git lg"
alias gls="git log -p"
alias glog="git log"
alias gsn="git show --name-only"

# docker alias
dockerexec() {
    docker exec -it $1 bash
}
dockerip() {
    docker inspect $1 | grep IP
}
dockerkillall() {
    docker kill $(docker ps -q)
}


alias dk="docker"
alias dke="dockerexec"
alias dkps="docker ps"
alias dki="docker images"
alias dkk="docker kill"
alias dkl="docker logs"
alias dka="dockerkillall"
alias dsp="docker system prune --force"
alias dkip="dockerip"
alias pcurl="podman run -it curlimages/curl:latest"


export PATH=$PATH:/usr/local/bin:~/go/bin:/Users/jimfuller/.local/bin

plugins=(git emacs github node npm pip sudo gradle history nmap python z docker zsh-syntax-highlighting)

# startup with the weather
# curl http://v2.wttr.in/prague

# check if curl dockerimage is ok
# checkcurlimage.sh

#eval "$(direnv hook zsh)"
export PATH="/usr/local/opt/curl/bin:$PATH"

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

# log4j mitigation
export LOG4J_FORMAT_MSG_NO_LOOKUPS=true
export GPG_TTY=$(tty)

export PATH="$HOME/.cargo/bin:$PATH"
