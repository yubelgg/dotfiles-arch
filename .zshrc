# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'

if [ -z "$TMUX" ]
then
    tmux attach || tmux new 
fi

# Alias
alias vim="nvim"
alias ls="ls -al --color"
alias neofetch="fastfetch"
alias gst="git status"
alias gaa="git add ."
alias gp="git push"
alias gcm="git commit -m"
alias oo="cd ~/Documents/Brain/zettel"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

go_dir() {
    cd "$(find ~/personal -type d \( -name ".git" -o -name "node_modules" \) -prune -o -type d -print | fzf)"
    zle accept-line
}
zle -N go_dir
bindkey "^[d" go_dir

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
