# This comment triggers syntax highlighting in vim
set --global --export LSCOLORS "Exfxcxdxbxegedabagacad"

alias lsf="ls -aGFh"

if status --is-interactive
  fish_vi_key_bindings
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
