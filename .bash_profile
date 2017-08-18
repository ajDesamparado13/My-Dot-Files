#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERM='termite'
export BROWSER='firefox'
export EDITOR='nvim'
#if [ -e /usr/share/terminfo/r/rxvt-unicode-256color ]; then
#        export TERM='rxvt-unicode-256color'
#else
#        export TERM='rxvt-unicode'
#fi

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
 [[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
    #exec startx
fi
