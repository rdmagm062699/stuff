# colors
PS1='\h  \w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PGDATA=/usr/local/var/postgresql@9.6

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Aliases
alias flushdns='sudo killall -HUP mDNSResponder'
alias azdev='az login > /dev/null && az account set --subscription HISC-DEV && az account show'
alias gitprune='git fetch --prune && git branch --merged | grep -E -v "^((\* )|\s*(develop|main|master)$)" | xargs git branch -d'
alias gitgone="git branch -vv | grep origin | grep gone | awk '{ print $1 }' | grep -E -v '^((\* )|\s*(develop|main|master)$)' | xargs git branch -D"
alias gitnoremote="git branch -vv | grep -v "origin" | awk '{ print $1 }' | grep -E -v '^((\* )|\s*(develop|main|master)$)'"

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

. .bashrc
