# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"


###############################################################################
# ZSH Config
###############################################################################
# Set home dir to /home unless this is on Mac for some reason
HOMEDIR='/home'
UNAMESTR=`uname`
if [[ "$UNAMESTR" == 'Darwin' ]]; then
    HOMEDIR='/Users'
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python command-not-found common-aliases compleat debian docker history jsontools pep8 pip sudo tmux aws terraform virtualenv)

# Path to your oh-my-zsh installation.
export ZSH=$HOMEDIR/$USER/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

# Syntax highlighting plugin
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Remind me to update OhMyZSH weekly
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

# Completion Waiting Dots!
COMPLETION_WAITING_DOTS="true"


###############################################################################
# Aliases
###############################################################################

alias ll="ls -lah"
alias l="ls -l"


###############################################################################
# Functions
###############################################################################

tg() {
    terragrunt "$@" --terragrunt-source-update
}

av() {
    aws-vault "$@"
}

avl() {
    aws-vault login "$@"
}

ave() {
    aws-vault exec "$1" -- "$2"
}


###############################################################################
# Keybinding
###############################################################################

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word


###############################################################################
# ENV VARS
###############################################################################

export ANSIBLE_CONFIG="~/.ansible/ansible.cfg"


###############################################################################
# PATH
###############################################################################

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
