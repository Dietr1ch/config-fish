
function _dotfiles -d 'Get dotfiles git'
	cd

	set -l user $USER
	if count $argv >/dev/null
		set -l user $argv[1]
	end

	if not git rev-parse --show-toplevel >/dev/null ^/dev/null
		echo "Getting dotfiles for $user (https://github.com/$user/dotfiles)"
		git init
		  and git config status.showUntrackedFiles no
		  and git remote add origin-http https://github.com/$user/dotfiles
		  and git fetch origin-http
		  and git reset --hard origin-http/master
		git remote rm origin-http
		git remote add origin gh:$user/dotfiles
		  and git fetch origin
		  and git branch --set-upstream-to=origin/master master
		git remote add private gh:$user/dotfiles-private
		  and git fetch private
		  and git checkout -b $user private/$user
	end
end
