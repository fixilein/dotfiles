# pywal colors
(cat ~/.cache/wal/sequences &)

# neofetch --disable theme icons --disable resolution --color_blocks off
# neofetch --ascii "$(fortune | cowsay)"
# neofetch --w3m ~/Pictures/Wallpapers_Worth_Saving/wallhaven-132789.jpg
pfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Current Working directory to PATH
# export PATH=$PATH:.
# TODO move to .xprofile
export PATH=$PATH:~/scripts/

# export MANPATH="/usr/local/man:$MANPATH"
export BROWSER=/usr/bin/google-chrome-stable
export EDITOR='nvim'

# Path to your oh-my-zsh installation.
export ZSH="/home/felix/.oh-my-zsh"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="random"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
DISABLE_UPDATE_PROMPT="true"

# DISABLE_LS_COLORS="true"
# ENABLE_CORRECTION="true"

# DISABLE_AUTO_TITLE="true"


# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
         npm
         vi-mode
         docker
         zsh-autosuggestions
         colored-man-pages
         colorize
	     ssh-agent
	     wd
	     autojump
         )

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='emacsclient -nc -a=vim'
# fi

alias q="exit"
alias r="ranger"
alias rice='eval $EDITOR $(find ~/rice -type f -not -iwholename "*.git*" | fzf)'

# use $EDITOR as editor
alias e="eval $EDITOR"
alias yeet="yay --noconfirm"
alias yote="yay -R"
alias yeeet="yay --noconfirm -S"
# alias u="pacman -Qe | awk '{print $1}' > ~/rice/installed-packages/package-list"
alias weather="curl wttr.in"
alias please="sudo"
alias fucking="sudo"
alias ff='f=$(fzf) ; e ${f} & ; disown ; exit'
alias ydl="youtube-dl"
alias gpu="optimus-manager"
alias gs="git status"
alias b="br --sizes"
alias vim="nvim"
alias v="nvim"
alias calc="bc -ql"
alias sus="systemctl suspend"
alias genact="clear; /usr/bin/genact"

eval $(thefuck --alias)

# auto cpmpletion (eg bspc)
# (this adds quite some time to startup but it's awesome)
autoload -U compinit
compinit

# Bind Ctrl + Space to accept suggestion
bindkey '^ ' autosuggest-accept

source /home/felix/.config/broot/launcher/bash/br

# Insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
