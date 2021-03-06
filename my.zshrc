# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="david4"

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
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/mcocci/.local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
###########################################################
### MY ADDITIONS ##########################################
###########################################################

alias dropbox='cd ~/Dropbox'

# TMUX wants TERM="screen-256color" so use that if in tmux
export TERM="xterm-256color"
[ -n "$TMUX" ] && export TERM=screen-256color
alias tmux="tmux -2"


# Better log viewing in Git, from Henry
alias githist='git log --graph --all --full-history --color --format=oneline --branches --abbrev-commit'

# For displaying the files tracked by git
function gittree {
  local branch
  if [ -z $1 ]
  then
    branch="master"
  else
    branch="$1"
  fi
  printf "BRANCH: $branch\n\n"
  git ls-tree -r $branch --name-only
  printf "\nBRANCH: $branch\n"
}

# Easier scrolling for very large directories
alias lss='ls | less'

eval `dircolors ~/.dircolors`

# added by Anaconda2 2.4.1 installer
export PATH="/home/mcocci/anaconda2/bin:$PATH"

# For copying the latex template to the current directory
function latex-template {
  cp ~/Documents/ConfigurationTemplates/latexTemplate.tex ./${PWD##*/}.tex
}

# For copying the latex template to the current directory
function assignment-folder {
  mkdir Assignment$1/
  cd Assignment$1
  mkdir Working/
  latex-template
  mv Assignment$1.tex Working/
  cd Working/
}
