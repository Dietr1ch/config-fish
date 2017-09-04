
function ccd -d "cd to a possibly new directory"
	command mkdir -p "$argv[1]";  and  cd "$argv[1]"
end
