# zplug config
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", from:github
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# modif prompt
source ~/.gitstatus/gitstatus.prompt.zsh
RPROMPT='$GITSTATUS_PROMPT'
PROMPT='%F{yellow}%~%f | %F{cyan}%*%f > '

# alias
alias cls="clear"
alias zshrc="vim ~/.zshrc"
alias copy="pbcopy"
alias py="python3"
alias work="cd ~/code/42_pipex"
alias code="cd ~/code"
alias cgoinfre="sh ~/.scripts/cgoinfre.sh"
alias spotify="open -a Spotify"
alias discord="open -a Discord"
alias slack="open -a Slack"
alias brave="open -a Brave\ Browser"
#color ls
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
if [ "$TMUX" = "" ]; then tmux; fi

USER=mathieu
export USER
