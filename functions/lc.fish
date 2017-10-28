
function lc -d "locate files under current directory"
	command locate -A $PWD'/*' $argv | grep -v '^'$PWD'/\.' | sed "s#^$PWD/##"
end
