# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
# Path to your oh-my-zsh installation.
export ZSH=/Users/Brian/.oh-my-zsh

# added by travis gem
[ -f /Users/Brian/.travis/travis.sh ] && source /Users/Brian/.travis/travis.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="Soliah"

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
plugins=(git git-extras gitfast autojump wd z web-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

function rstudio()
{
	open -a RStudio ./$1
}

function asm()
{
	java -jar ~/Mars4_5.jar $1
}

function push()
{
  if [ $# -eq 2 ]
  then
    echo "two args"
    git add $1
    git commit -m "$2"
    git push
  fi

  if [ $# -eq 1 ]
  then
    echo "just one arg"
    git commit -m "$1"
    git push
  fi
}

# easily get your ip address
function ip()
{
	curl ipecho.net/plain ; echo
}

function tex()
{
    if [ "clean" = "$1" ]; then
        # clean up junk tex files
        rm *.aux
        rm *.log
        rm *.toc    
        rm *.lof
        rm *.synctex.gz
        rm *.blg
        
    elif [ "img" = "$1" ]; then
        teximg
    elif [ "img2" = "$1" ]; then
        teximg2
    elif [ ! -f $1 ]; then
        # The file does not exist at $1 so create it from template
        cp ~/.template.tex $1
        open -a TeXshop "$1"
    else 
        open -a TeXshop "$1"
    fi
}

function teximg()
{
	echo '\\begin{figure} [h!]
  \\begin{center}
  	\\includegraphics[width=200 pt]{images/boat}
  	\\caption{A boat.}
  	\\label{fig:boat}
  \\end{center}
\\end{figure}' | pbcopy
    echo 'A latex image insertion template is copied to your clipboard!'
}


function teximg2()
{
	echo '\\usepackage{caption}
\\begin{figure} [h!]
	\\centering
	\\begin{minipage}{.5\\textwidth}
	  \\centering
      \\vspace{-10 pt}
	  \\includegraphics[width=.5\\linewidth]{images/q1a}
	  \\captionof{figure}{caption2}
	  \\label{fig:test1}
	\\end{minipage}%
	\\begin{minipage}{.5\\textwidth}
	  \\centering
      \\vspace{-10 pt}
	  \\includegraphics[width=.5\\linewidth]{images/q1b}
	  \\captionof{figure}{caption2}
	  \\label{fig:test2}
	\\end{minipage}
\\end{figure}' | pbcopy
    echo 'A side-by-side latex image insertion template is copied to your clipboard!'
}

function cpg()
{
	if [ $1 = "-r" ]; then
		echo "Copied files and moving to directory $3"
		cp -r $2 $3
		cd $3
	else
		echo "Copied file and moving to directory $2"
		cp $1 $2
		cd $2
	fi
}

function ctemp()
{
    cp ~/.ctemp.c $1
}

function c()
{
    sh create_thesis.sh
}


# User configuration

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
# export ARCHFLAGS="-arch x86_64"

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
