# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

alias ll="ls -Gla"
alias govm="ssh govm"
alias txx4="ssh txx4"
alias headend="ssh headend"
alias sensor="ssh sensor"
alias nebula="ssh nebula"
alias aws="ssh aws"
alias tmux="tmux -2"
alias p="pushd"
alias o="popd"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
source dnvm.sh
# Initialization for FDK command line tools.Tue Mar 29 15:42:52 2016
FDK_EXE="/Users/rook/bin/FDK/Tools/osx"
PATH=${PATH}:"/Users/rook/bin/FDK/Tools/osx"
export PATH
export FDK_EXE

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
