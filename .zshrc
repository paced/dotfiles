ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="flazz"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)

alias testnet="ping 8.8.8.8 -c 3"
alias sudo="sudo "
alias cd="cd "
alias sysupdate="sudo pacman -Syu "
alias aur="packer --aur"
alias sl="subl3 "
alias fuck="sudo $(history -p \!\!)"
alias lock="~/.bin/lock.sh"
alias pipes="~/.bin/pipes.sh"
alias candy="~/.bin/candy.sh"
alias imgurbash="~/.bin/upload.sh"
alias screen="~/.bin/drawmaim.sh"
alias music="ncmpcpp"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh