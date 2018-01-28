
alias _r="exec fish"
if which pacaur >/dev/null ^/dev/null
	alias p="pacaur"
else if which pacman >/dev/null ^/dev/null
	alias p="pacman"
end

if which exa >/dev/null ^/dev/null
	alias l="exa -F --group-directories-first"
	alias ll="exa -lF --git --group-directories-first"
else
	alias l="ls --group-directories-first"
	alias ll="ls -l --group-directories-first"
end
alias la="l -a"
alias lla="ll -a"

alias f="fd"
alias r="ranger"

alias e="$EDITOR"
alias ee="$VISUAL"
alias em="emacs"
alias ec="emacsclient"

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
