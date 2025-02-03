
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias switch-wallpaper='~/.config/hypr/scripts/switch-wallpaper.sh'
[ -f ~/.cache/wal/colors.sh ] && . ~/.cache/wal/colors.sh
#PS1='\[\e[38;2;235;186;255m\]\u\[\e[38;2;255;255;255m\]@\[\e[38;2;160;100;192m\]\h\[ \e[38;2;235;186;255m\]\w \[\e[0m\]'
#PS1='\[\e[38;2;${color1}m\]\u\[\e[38;2;${color2}m\]@\[\e[38;2;${color3}m\]\h\[\e[38;2;${color4}m\]:\[\e[38;2;${color5}m\]\w\[\e[0m\]\$ '
#PS1='\[\e[38;2;$(echo ${color1} | cut -d# -f2 | xxd -r -p | od -An -v -tu1 | awk '{print $1}')m`\]
# Example updated prompt text including "\>\useRIMARY with text INLINE

fastfetch --config examples/13
export PATH=$HOME/.local/bin:$PATH



export QSYS_ROOTDIR="/home/mage/intelFPGA_lite/20.1/quartus/sopc_builder/bin"

(cat ~/.cache/wal/sequences &) # Change the terminal colors with wal
