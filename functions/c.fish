
function c -d "Better cd"
	if count $argv >/dev/null
		cd $argv[1]
	else
		set -l git_root (git rev-parse --show-toplevel ^/dev/null)
		set -l hg_root (hg root ^/dev/null)
		if test -n $git_root
			cd $git_root
			# if test "$PWD" = "$git_root"
			# 	cd
			# else
			# 	cd $git_root
			# end
		else if test -n $hg_root
			cd $hg_root
		else
			cd
		end
	end

	if test $status -eq 0
		ll --color=always | less -R -F
	end
end
