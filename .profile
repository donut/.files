HISTSIZE=10000

export PATH=$PATH:~/Applications/Bin:~/Applications/Homebrew/bin

# Enable VIM mode
set -o vi

### Colors ###
Black="$(tput setaf 0)"
BlackBG="$(tput setab 0)"
DarkGrey="$(tput bold ; tput setaf 0)"
LightGrey="$(tput setaf 7)"
LightGreyBG="$(tput setab 7)"
White="$(tput bold ; tput setaf 7)"
Red="$(tput setaf 1)"
RedBG="$(tput setab 1)"
LightRed="$(tput bold ; tput setaf 1)"
Green="$(tput setaf 2)"
GreenBG="$(tput setab 2)"
LightGreen="$(tput bold ; tput setaf 2)"
Brown="$(tput setaf 3)"
BrownBG="$(tput setab 3)"
Yellow="$(tput bold ; tput setaf 3)"
Blue="$(tput setaf 4)"
BlueBG="$(tput setab 4)"
LightBlue="$(tput bold ; tput setaf 4)"
Purple="$(tput setaf 5)"
PurpleBG="$(tput setab 5)"
Pink="$(tput bold ; tput setaf 5)"
Cyan="$(tput setaf 6)"
CyanBG="$(tput setab 6)"
LightCyan="$(tput bold ; tput setaf 6)"
NC="$(tput sgr0)" # No Color

# Git Tools
if [ -f ~/.files/git-completion.bash ]; then
  source ~/.files/git-completion.bash
fi

### Prompts ###
if [ -f ~/.files/git-prompt.sh ]; then
  source ~/.files/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWSTASHSTATE=1
  export GIT_PS1_SHOWUNTRACKEDFILES=1
  export PS1='\[$LightRed\]\u\[$NC\][\[$LightBlue\]\w\[$NC\]]$(__git_ps1 " (%s)")\n\[$Black\]\$\[$NC\] '
else
  # Without git installed:
  export PS1='\[$LightRed\]\u\[$NC\][\[$LightBlue\]\w\[$NC\]]\n\[$Black\]\$\[$NC\] '
fi

export PATH="$HOME/.yarn/bin:$PATH"

export PATH=/Users/donovan/.local/bin/luna-studio:$PATH
