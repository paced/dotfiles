ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="philips"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)

# ---------------------------------------
# - Aliases:
# ---------------------------------------

# Internal:

alias testnet="ping 8.8.8.8 -c 3"
alias sudo="sudo "
alias cd="cd "

# Software:

alias fm="pcmanfm "
alias sl="geany "

# Extra:

alias fuck="sudo $(history -p \!\!)"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
