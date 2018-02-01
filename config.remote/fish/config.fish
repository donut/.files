alias ls "ls -aGFh@O"
set --global --export LSCOLORS "Exfxcxdxbxegedabagacad"

if status --is-interactive
  fish_vi_key_bindings
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
