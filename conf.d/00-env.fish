
# Path
# ====
function add_to_path
	for d in $argv
		if test -d $d
			set PATH $d $PATH
		end
	end
end

# System path
set PATH /bin
add_to_path /usr/{local/,}bin
add_to_path /usr/bin/{site,vendor,core}_perl
# Nixos
add_to_path /etc/profiles/per-user/$USER/bin
add_to_path /run/current-system/sw/{,s}bin
add_to_path /nix/var/nix/profiles/default/bin
add_to_path /run/wrappers/bin
# User path
add_to_path $HOME/.nix-profile/bin
add_to_path $HOME/.local/bin
add_to_path $HOME/.cargo/bin
add_to_path $HOME/.bin

# Editor
# ======
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

# Pager
# =====
set -x PAGER less
set -x LESS "-iMSx4 -F"

