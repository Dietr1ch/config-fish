
alias _r "exec fish"
if which pacaur >/dev/null ^/dev/null
	abbr p "pacaur"
else if which pacman >/dev/null ^/dev/null
	abbr p "pacman"
end

if which exa >/dev/null ^/dev/null
	abbr l "exa -F --group-directories-first"
	abbr ll "exa -lF --git --group-directories-first"
else
	abbr l "ls --group-directories-first"
	abbr ll "ls -l --group-directories-first"
end
abbr la "l -a"
abbr lla "ll -a"

abbr f "fd"
abbr r "ranger"
abbr rs "rsync"

abbr e "$EDITOR"
abbr ee "$VISUAL"
abbr em "emacs"
abbr ec "emacsclient"

abbr v "vim"
abbr n "nvim"

abbr m "ncmpcpp"

abbr o "xdg-open"

abbr λ "ghci"

abbr py "python"
abbr ipy "ipython"

alias clipCopy "xclip -sel clip"
alias clipPaste "xclip -o"
alias clipLength "clipPaste | wc"

abbr sc "systemctl"
abbr scu "systemctl  --user"
