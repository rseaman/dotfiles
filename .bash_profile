# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

alias ll="ls -Gla"
alias govm="ssh govm"
alias headend="ssh headend"
alias nebula="ssh nebula"
alias tmux="tmux -2"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
# Initialization for FDK command line tools.Tue Mar 29 15:42:52 2016
FDK_EXE="/Users/rook/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/rook/bin/FDK/Tools/osx"
export PATH
export FDK_EXE
