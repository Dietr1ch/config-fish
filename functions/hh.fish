
function hh -d "history"
	if count $argv >/dev/null
		history | grep -e $argv[1] | less
	else
		history | less
	end
end
