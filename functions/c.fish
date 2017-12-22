
function c -d "cd to a possibly new directory"
	if count $argv >/dev/null
		cd $argv[1]
	else
    set -l git_root (git rev-parse --show-toplevel)
    if test -z $git_root
      cd
    else
      cd $git_root
    end
	end
end
