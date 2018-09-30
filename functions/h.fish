
function __git
  if count $argv >/dev/null
    command git $argv
  else
    command git status
    command git ll -n 5
  end
end

function __hg
  if count $argv >/dev/null
    command hg $argv
  else
    command hg status
    command hg log
  end
end

function h -d 'Wrapper for git and hg'
  set -l git_root (command git rev-parse --show-toplevel ^/dev/null)
  set -l hg_root  (command hg root --cwd "$d" ^/dev/null)

  if [ "$git_root" -a "$hg_root" ]
    # only show the closest parent
    switch $git_root
      case $hg_root\*
        __git $argv
      case \*
        __hg $argv
    end
  else if [ "$git_root" ]
    __git $argv
  else if [ "$hg_root" ]
    __hg $argv
  else
    echo "There's no repo here"
  end
end
