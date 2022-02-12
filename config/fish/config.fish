fish_vi_key_bindings

[ -e $HOME/.config/fish/functions/git.fish ]; and source $HOME/.config/fish/functions/git.fish 
[ -e $HOME/.config/fish/conf.d/aliases.fish ]; and source $HOME/.config/fish/conf.d/aliases.fish 

[ -e $HOME/.config/fish/config.fish.local ]; and source $HOME/.config/fish/config.fish.local
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -g GOROOT  $HOME/go
set -g fish_user_paths "$GOROOT/bin" $fish_user_paths;
set -g fish_user_paths "$HOME/.cargo/bin" $fish_user_paths;
set -g fish_user_paths "/usr/local/i386elfgcc/bin/" $fish_user_paths
set -g fish_user_paths "$HOME/.local/share/solana/install/active_release/bin" $fish_user_paths;

set -x LANG en_US.UTF-8
status --is-interactive
