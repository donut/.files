alias ls "ls -aGFh@O"
set --global --export LSCOLORS "Exfxcxdxbxegedabagacad"

if status --is-interactive
  fish_vi_key_bindings
end

set PATH ~/.npm-packages/bin (yarn global bin) ~/Applications/Bin $PATH

if which swiftenv > /dev/null; status --is-interactive;
  set --global --export PATH '/Users/donovan/.swiftenv/shims' $PATH
  source '/usr/local/Cellar/swiftenv/HEAD/bin/../libexec/../completions/swiftenv.fish'
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# OPAM configuration
#source /Users/donovan/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
eval (opam config env)
