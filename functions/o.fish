

function o -d "open files"
	for a in $argv[1..-1]
		xdg-open "$a"
		sleep 0.5
	end
end
