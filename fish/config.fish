source $HOME/.cargo/env
source $HOME/.config/fish/functions/__fit.fish
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/mysql/bin" $fish_user_paths
set -x LANG en_US.UTF-8
set pure_color_git_branch (set_color 6C6C6C)
set pure_color_git_dirty (set_color 6C6C6C)
