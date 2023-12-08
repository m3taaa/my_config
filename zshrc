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
source ~/gitstatus/gitstatus.prompt.zsh
RPROMPT='$GITSTATUS_PROMPT'
PROMPT='%F{yellow}%~%f | %F{cyan}%*%f > '

# alias
alias work="cd ~/code/so_long/"
alias vpnthm="sudo openvpn /Users/mathieu/cyber/tryhackme/vpn/m3taaa.ovpn"
alias copy="pbcopy"
alias cgoinfre="bash ~/code/scripts/clean_goinfre.sh"
#color ls
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3 # run chruby to see actual version
USER=mathieu
export USER
# run tmux
tmux
