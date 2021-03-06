# XDG
# ===
# System
#set -x XDG_RUNTIME_DIR /run/user/(id -u)
#set -x XDG_DATA_DIRS /usr/share:/usr/local/share
#set -x XDG_CONFIG_DIRS /etc/xdg

# User
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_DESKTOP_DIR $HOME/Desktop
set -x XDG_DOWNLOAD_DIR $HOME/Downloads
set -x XDG_DOCUMENTS_DIR $HOME/Documents
set -x XDG_MUSIC_DIR $HOME/Music
set -x XDG_PICTURES_DIR $HOME/Pictures
set -x XDG_VIDEOS_DIR $HOME/Videos

# Path
# ====
function add_to_path
	for d in $argv
		if test -d $d
			set PATH $d $PATH
		end
	end
end

# System PATH
set PATH "/bin"
add_to_path "/usr/bin"
add_to_path "/usr/local/bin"
add_to_path /usr/bin/{site,vendor,core}_perl

# Nixos
# =====

# System
add_to_path "/etc/profiles/per-user/"$USER"/bin"
add_to_path "/run/current-system/sw/sbin"
add_to_path "/run/current-system/sw/bin"
add_to_path "/nix/var/nix/profiles/default/bin"
add_to_path "/run/wrappers/bin"
# User
add_to_path $HOME"/.nix-profile/sbin"
add_to_path $HOME"/.nix-profile/bin"
