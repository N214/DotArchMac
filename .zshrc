autoload -Uz promptinit
promptinit

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Config termite
#export TERM=linux
alias tmux="TERM=screen-256color-bce tmux"
# Export go
export PATH="/home/n214/go/bin:$PATH"

# Default system editor
export EDITOR=vim

#function zle-line-init() {
#  if (( ${+terminfo[smkx]})); then
#    echoto smkx
#  fi
#}
#
#function zle-line-finish() {
#  if (( ${+terminfo[rmkx]})); then
#    echoto rmkx
#  fi
#}
#

# Path to your oh-my-zsh installation.
  export ZSH="/home/n214/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bureau"
# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd -d 5 --no-ignore-vcs  -H'
export FZF_COMPLETION_TRIGGER='**'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

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
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  archlinux
  sudo
  last-working-dir
  chucknorris
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# sudo esc twice to put sudo infront of command
# last-work-dir "lwd" jump to last working directory
source $ZSH/oh-my-zsh.sh
source ~/.antigen.zsh

# Antigen plugin
#antigen bundle thewtex/tmux-mem-cpu-load
setopt correct
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
 export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export XDG_CURRENT_DESKTO=KDE
alias config='/usr/bin/git --git-dir=$HOME/DotArchMac/ --work-tree=$HOME'
alias orphans="pacman -Qdt" # List orphan programs
alias pu="sudo pacman -Syu"
alias p="sudo pacman"
alias tmux="tmux -2"
alias SS="sudo systemctl"
alias v="vim --servername VIM"
alias sv="sudo vim"
alias r="ranger"
alias sr="sudo ranger"
alias mkd="mkdir -pv"
alias please="sudo"
alias vz="vim ~/.zshrc" 
alias v3="vim ~/.config/i3/config"
alias sz="source ~/.zshrc && echo 'zshrc sourced'"
alias vt="vim ~/.tmux.conf"
alias vp="vim ~/Notes/Packages"
alias scut="vim ~/Notes/Shortcut"
alias shutdown='sudo shutdown now'
alias restart='sudo restart now'
alias torrent='torrench'
alias mantorrent='vim /home/n214/.config/torrench/torrent'
alias vi3='vim ~/.config/i3/config'
alias vv='vim ~/ArchMac/.vimrc'
alias serve='python -m http.server' # optional arg: port (defaults to 8000)
alias e=exit
#alias maj = "git_update"

cfg_update() { 
          config commit -a -m "$1"
          config push
        }

git_update() {
      git add -A
      git commit -m 'Update'
      git push
    }


. ~/z/z.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Pipenv

export PATH="/home/n214/.pyenv/bin:$PATH"
export PATH="/opt/miniconda3/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

function countdown(){
   date1=$((`date +%s` + $1)); 
   while [ "$date1" -ge `date +%s` ]; do 
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`; 
   while true; do 
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
    sleep 0.1
   done
}

# locate a file and open with vim
ff() {
  local files

  files=(${(f)"$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1 -m)"})

  if [[ -n $files ]]
  then
     vim -- $files
     print -l $files[1]
  fi
}

# Change directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# Change directory from anywhere
ccf() {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n $file ]]
  then
     if [[ -d $file ]]
     then
        cd -- $file
     else
        cd -- ${file:h}
     fi
  fi
}
