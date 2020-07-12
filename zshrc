# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/opanmustopah/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
# ZSH_THEME="powerlevel9k/powerlevel9k"

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
plugins=(
  git ruby zsh-nvm tmux elixir
)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export POWERLINE_PATH="/Users/opanmustopah/Library/Python/3.6/lib/python/site-packages/powerline"

# Load GO languange
export GOPATH=/opt/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

source $ZSH/oh-my-zsh.sh

# Maven configuration
export PATH=$PATH:/opt/apache-maven-3.6.0/bin

# Load Visual Studia Code
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# User configuration

alias please="sudo"

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

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Initialize fasd
if which fasd > /dev/null; then eval "$(fasd --init auto)"; fi

# Spaceship Prompt config
SPACESHIP_DIR_TRUNC_REPO=false

# Powerlevel9k config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true

export VISUAL=nvim
export EDITOR="$VISUAL"
export HISTTIMEFORMAT="%d/%m/%y %T "

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function listening_on_port() {
  # For macOS Sierra
  lsof -nP -i4TCP:"$1" | grep LISTEN
}

# Config related to Kubernetes
alias k="kubectl"
alias mk="minikube"
alias kx="kubectx"

# Config related to Docker
alias dk="docker"
alias dkrmi='dk rmi -f $(dk images -aq -f dangling=true)'
alias dkc="docker-compose"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

# Config kops
export KOPS_STATE_STORE=s3://aws-kops/kops

# Config Hanami
alias hn="bundle exec hanami"

# Config prometheus
export PATH=$PATH:/opt/prometheus-2.9.2.darwin-amd64/bin

# Config Vault
export VAULT_ADDR='http://127.0.0.1:8200'

export LC_ALL=en_US.UTF-8

# Config KIND (Kubernetes in Docker)
alias start_kind='export KUBECONFIG="$(kind get kubeconfig-path)"'
alias done_kind='export KUBECONFIG=""'
