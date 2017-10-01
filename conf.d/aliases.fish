
alias _r="exec fish"

alias l="exa -F --group-directories-first"
alias ll="exa -lF --git --group-directories-first -g"
alias la="l -a"
alias lla="ll -a"

alias r="ranger"

alias e="emacs -nw"
alias ee="emacs"
alias ec="emacsclient"
alias ek="emacsclient --eval'(kill-emacs)'"

alias v="vim"
alias n="nvim"

alias m="ncmpcpp"

alias g="git"
alias h="hg"

alias o="xdg-open"

alias λ="ghci"

alias py="python"
alias ipy="ipython"

alias clipCopy="xclip -sel clip"
alias clipPaste="xclip -o"
alias clipLength="clipPaste | wc"

alias sc="systemctl"
alias scu="systemctl  --user"
