# colors
PS1='\h  \w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Tell ls to be colourful
export CLICOLOR=1
#export LSCOLORS=Exfxcxdxbxegedabagaca
export LSCOLORS=ExFxCxDxBxegedabagacad
