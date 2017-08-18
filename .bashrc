# ~/.bashrc
#                       ██████   █████  ███████ ██   ██
#                       ██   ██ ██   ██ ██      ██   ██
#                       ██████  ███████ ███████ ███████
#                       ██   ██ ██   ██      ██ ██   ██
#                       ██████  ██   ██ ███████ ██   ██
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
complete -cf sudo man

# TERMCAP Setup
# enter blinking mode - red
export LESS_TERMCAP_mb=$(printf '\e[01;31m')
# enter double-bright mode - bold, magenta
export LESS_TERMCAP_md=$(printf '\e[01;35m')
# turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_me=$(printf '\e[0m')
# leave standout mode
export LESS_TERMCAP_se=$(printf '\e[0m')
# enter standout mode - green
export LESS_TERMCAP_so=$(printf '\e[01;32m')
# leave underline mode
export LESS_TERMCAP_ue=$(printf '\e[0m')
# enter underline mode - blue
export LESS_TERMCAP_us=$(printf '\e[04;34m')


# PS1 Setup
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    local EXITCODE="$?"

    local HOSTCOLOR="5"
    local USERCOLOR="3"
    local PATHCOLOR="4"

        #PS1="\[ \e[3${HOSTCOLOR}m\h    \e[3${USERCOLOR}m\u     \e[3${PATHCOLOR}m  \w \n  \]"; 
    PS1="\[ \e[3${HOSTCOLOR}m \h    \e[3${USERCOLOR}m \u    \e[3${PATHCOLOR}m  \w \n";

    if [ $EXITCODE == 0 ]; then
        PS1+="\e[32m\$ \e[0m";
    else
        PS1+="\e[31m\$ \e[0m";
    fi
}

shopt -s autocd
shopt -s checkwinsize





alias xterm='urxvt'
#Power
alias reboot='shutdown -r now'
alias poweroff='shutdown -P now'

#Clearing console screen
alias cc='clear'
alias cls='clear'

#Make interactive
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#bash configuration
alias bsr='vi ~/.bashrc'
alias bsp='vi ~/.bash_profile'
alias bsl='vi ~/.bash_logout'
alias sbrc='source ~/.bashrc'

#config files
alias vimrc='vi  ~/.config/nvim/'
alias i3conf='vi ~/.config/i3/'
alias sconfig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


#Pacman
alias pacman='sudo pacman'
alias sinstall='sudo pacman -S'
alias sfind='pacman -Q | grep'
alias srefresh='sudo pacman -Syyu'
alias supdate='sudo pacman -Syu'
alias sremove='sudo pacman -Rsn'

#enhancement on builtin commands
alias ls='ls --color=auto'
alias pip='sudo pip'
alias copy='xclip -selection clipboard'
alias grep='grep --color=auto'
alias unigrep='grep -P "[^\x00-\x7F]"'

#set default vim instance
alias vim='nvim'
alias vi='nvim'

#internet connections
alias alenski='sudo netctl start wlp3s0-alenski'
alias elan='sudo dhcpcd enp2s0'

#software development
alias art='php artisan'
alias npmrw='npm run watch'


#work related aliases
alias work='vi ~/Workspace/telenet-project-2017/telenet-cost-calculator'
alias workspace='cd ~/Workspace/telenet-project-2017/telenet-cost-calculator'
alias serverwork='ssh fmdev@160.16.95.105 -p 2020'

#prevent typo command
alias mkdri='mkdir'

function cdn(){
    for i in `seq $1`;
    do cd ..;
    done;
}

function extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2) tar xvjf $1 ;;
            *.tar.gz) tar xvzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) unrar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar)  tar xvf $1  ;;
            *.tbz2) tar xvjf $1 ;;
            *.tgz)  tar xvzf $1 ;;
            *.zip)  unzip $1    ;;
            *.Z)    uncompress $1    ;;
            *.7z)   7z x $1 ;;
            *)  echo "don't know how to extract '$1'...." ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function pskill(){
    ps ax | grep "$1" | grep -v grep | awk '{ print $1 }' | xargs kill
}

