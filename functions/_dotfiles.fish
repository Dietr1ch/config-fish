

function _dotfiles -d 'Get dotfiles git'
	cd
	if not git rev-parse --show-toplevel >/dev/null ^/dev/null
		git init
		  and git config status.showUntrackedFiles no
		  and git remote add origin-http https://github.com/$USER/dotfiles
		  and git fetch origin-http
		  and git reset --hard origin-http/master
		git remote rm origin-http
		git remote add origin gh:$USER/dotfiles
		  and git fetch origin
		  and git branch --set-upstream-to=origin/master master
		git remote add private gh:$USER/dotfiles-private
		  and git fetch private
		  and git checkout -b $USER private/$USER
	end
end
