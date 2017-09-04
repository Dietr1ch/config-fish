
# Theme setup
set -g theme_git_worktree_support yes
set -g theme_display_hg yes
set -g theme_show_exit_status yes
# set -g theme_color_scheme dark
set -g theme_newline_cursor clean

# set -U FZF_FIND_FILE_COMMAND "command locate \$PWD | sed 's#'\$PWD/'##'"
set -U FZF_FIND_FILE_COMMAND "command pt -l ''"
