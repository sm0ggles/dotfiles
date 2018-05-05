#!/bin/bash
echo $(clear)
reset=$(tput sgr0)
bold=$(tput bold)

PS1="\n\[\e[0;34m\]┌─┄┄[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\w\e[0;34m]─┄[\[\e[1;36m\]${HOSTNAME%%.*}\[\e[0;34m\]]\[\e[1;35m\]: \$\[\e[0;34m\]\n\[\e[0;34m\]└──┄┄ \[\e[1;35m\]>> \[\e[00;00m\]"


# Visualiza los ficheros y directorios 
function cdls { cd "$1"; ls --color;}
alias cd='cdls'

export LS_OPTIONS='--color=auto'

eval "`dircolors`"
alias ls='ls $LS_OPTIONS'

# Transparencia Xterm
[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null



# MONITORS
alias monitor1='glances -1'
alias monitor2='slurm -i wlan0'
alias monitor3='vnstat -l -u -i wlan0'
alias monitor4='watch -n 1 -d free'
alias monitor5='cmatrix -bC magenta'
alias hora='tty-clock -cstDC red'

#	Colors:

#  BLACK=	'\e[0;30m'
#  RED=		'\e[0;31m'
#  GREEN=	'\e[0;32m'
#  YELLOW=	'\e[0;33m'
#  BLUE=	'\e[0;34m'
#  MAGENT=	'\e[0;35m'
#  CYAN=	'\e[0;36m'
#  WHITE=	'\e[0;37m'

#  LIGHTBLACK=	'\e[1;30m'
#  LIGHTRED=	'\e[1;31m'
#  LIGHTGREEN=	'\e[1;32m'
#  LIGHTYELLOW=	'\e[1;33m'
#  LIGHTBLUE=	'\e[1;34m'
#  LIGHTMAGENT= '\e[1;35m'
#  LIGHTCYAN=	'\e[1;36m'
#  LIGHTWHITE=	'\e[1;37m'

# Alias
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias upd='sudo pacman -Syyu'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias cd..='cd ..'
alias _='sudo'
alias ufetch='./Documents/scripts/ufetch.sh'
alias blocks='./Documents/git/Color-Scripts/color-scripts/blocks1'
figlet -f Poison sm0g
