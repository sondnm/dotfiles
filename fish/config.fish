fish_vi_key_bindings
source $HOME/.config/fish/functions/__fit.fish
[ -e $HOME/.config/fish/config.fish.local ]; and source $HOME/.config/fish/config.fish.local
set -g GOPATH $HOME/go
set -g GOROOT (brew --prefix golang)/libexec
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/mysql/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/i386elfgcc/bin/" $fish_user_paths
set -g fish_user_paths "$HOME/.cargo/bin" $fish_user_paths;
set -g fish_user_paths "/Library/Frameworks/Python.framework/Versions/3.8/bin/" $fish_user_paths;
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths;
set -g fish_user_paths "$GOROOT/bin" $fish_user_paths;
set -g fish_user_paths "$HOME/.local/share/solana/install/active_release/bin" $fish_user_paths;

set -x LANG en_US.UTF-8
set pure_color_git_branch (set_color 6C6C6C)
set pure_color_git_dirty (set_color 6C6C6C)
status --is-interactive

# Enable AWS CLI autocompletion: github.com/aws/aws-cli/issues/1079
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
set -g fish_user_paths "/usr/local/opt/openssl@1.0.2t/bin" $fish_user_paths

if type -q fd
  export FZF_DEFAULT_COMMAND='fd --type file --hidden'
else if type -q rg
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules}/*"'
end

if type -q fd
  export FZF_CTRL_T_COMMAND='fd --type file --hidden'
else if type -q rg
  export FZF_CTRL_T_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules}/*"'
end

# Bun
set -Ux BUN_INSTALL "/Users/son/.bun"
set -px --path PATH "/Users/son/.bun/bin"

