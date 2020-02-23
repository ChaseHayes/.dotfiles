# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# aliases
alias ls="ls -a --color=auto"
alias g="git"
alias gs="git status"
alias gp="git pull"
alias gd="git diff"
alias gl="git log"
alias ga="git add"
alias gcam="git commit -am"

