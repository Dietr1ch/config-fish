
# Theme setup
set -g theme_show_exit_status yes

set -g theme_powerline_fonts yes
set -g theme_newline_cursor clean
set -g theme_newline_cursor_arrow_glyph no
#set -g theme_color_scheme dark
set -U fish_color_autosuggestion 666

set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_master_branch no
# Disabled worktree (https://github.com/oh-my-fish/theme-bobthefish/issues/181)
#set -g theme_git_worktree_support yes

set -g theme_display_hg yes

set -g theme_display_hostname ssh
set -g theme_display_user ssh

set -g theme_display_vi yes

# Use locate for file and directory completion
set -U FZF_FIND_FILE_COMMAND "command locate \$PWD | sed 's#'\$PWD/'##'"
# set -U FZF_FIND_FILE_COMMAND "command pt -l ''"
set -U FZF_CD_COMMAND "command locate \$PWD | sed 's#'\$PWD/'##' | sed 's#\(.*\)/[^/]*#\1#' | uniq"

# Notify on long commands
set -U __done_min_cmd_duration 10000
