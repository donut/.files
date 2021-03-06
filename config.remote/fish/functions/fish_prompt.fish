# name: Jacaetevha
function tbytes -d 'calculates the total size of the files in the current directory'
  set -l tBytes (ls -al | grep "^-" | awk 'BEGIN {i=0} { i += $5 } END { print i }')
  
  if test $tBytes -lt 1048576
    set -g total (echo -e "scale=3 \n$tBytes/1048 \nquit" | bc)
    set -g units " Kb"
  else
    set -g total (echo -e "scale=3 \n$tBytes/1048576 \nquit" | bc)
    set -g units " Mb"
  end
  echo -n "$total$units"
end

function fish_prompt
  # Configure __fish_git_prompt
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_color green
  set -g __fish_git_prompt_color_flags red

  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
	set -g __fish_prompt_char '↪#'
      case '*'
	set -g __fish_prompt_char '↪ '
    end
  end

  set_color blue
  printf '%s' (pwd|sed "s=$HOME=~=")

  set_color green
  printf '%s' (__fish_git_prompt)

  set_color 919191
  printf ' [%s' (whoami)
  set_color 424242
  printf '@%s' (hostname)
  set_color 919191
  printf ']'

  # Line 2
  set_color -b normal
  echo
  if test $VIRTUAL_ENV
      printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end
  printf '%s ' $__fish_prompt_char
  set_color normal
end

function fish_right_prompt -d "Write out the right prompt"
  set_color 5E5E5E
  printf '%s' $status
  set_color 919191
  printf '@%s' (date "+%H:%M:%S")
end
