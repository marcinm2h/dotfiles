# Copied from Ubuntu's .bashrc
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"
    alias dir="dir --color=auto"
    alias vdir="vdir --color=auto"
    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Navigation
alias cd..="cd .." # As I frequentyl misspell it
alias ..="cd .."
alias ...="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias dev="cd ~/dev"

# Shortcuts
alias g="git"
alias c="clear" #ctrl+l is probably easier

# addons
alias wttr="curl wttr.in" #weather in my place

# File size
alias fs="stat -f \"%z bytes\""

# Kill dem processes
alias killnow="kill -9" 

# Faster npm for europeans
command -v npm > /dev/null && alias npme="npm --registry http://registry.npmjs.eu"