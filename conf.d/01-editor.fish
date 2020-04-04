
if which remacs >/dev/null ^/dev/null
	set -x EDITOR "remacsclient -c -nw"
	set -x VISUAL "remacsclient -c"
else if which emacs >/dev/null ^/dev/null
	set -x EDITOR "emacsclient -c -nw"
	set -x VISUAL "emacsclient -c"
else if which nvim >/dev/null ^/dev/null
	set -x EDITOR "nvim"
else if which vim >/dev/null ^/dev/null
	set -x EDITOR "vim"
else
	echo "Get some text editor!!!"
end

if which nvim >/dev/null ^/dev/null
	set -x ALTERNATE_EDITOR "nvim"
else if which vim >/dev/null ^/dev/null
	set -x ALTERNATE_EDITOR "vim"
end
