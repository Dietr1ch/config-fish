set -l ssh_local_agent  $XDG_RUNTIME_DIR"/keyring/local_agent"
set -l ssh_remote_agent $XDG_RUNTIME_DIR"/keyring/remote_agent"

if test -z $SSH_CONNECTION
	# Local clients default to the local agent.
	if test -z $SSH_AUTH_SOCK
		set -g -x SSH_AUTH_SOCK "$ssh_local_agent"
	end
else
	# Remote clients may update the remote agent symlink
	if not test -L "$SSH_AUTH_SOCK"
		if test -S "$SSH_AUTH_SOCK"
			mkdir -p (dirname $ssh_remote_agent)
			ln -sf $SSH_AUTH_SOCK "$ssh_remote_agent"
		end
	end

	# Remote agent defaults to the local agent if broken.
	if not test -e $ssh_remote_agent
		mkdir -p (dirname $ssh_remote_agent)
		ln -sf $ssh_local_agent "$ssh_remote_agent"
	end

	# Use the remote agent symlink to get updates
	set -g -x SSH_AUTH_SOCK "$ssh_remote_agent"
end

if test -z $SSH_ASKPASS
	if which ksshaskpass >/dev/null 2>/dev/null
		set -x SSH_ASKPASS "ksshaskpass"
	end
end
