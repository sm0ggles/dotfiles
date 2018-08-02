#!/bin/bash
#                                          
#  @@@@@@@    @@@@@@    @@@@@@   @@@  @@@  
#  @@@@@@@@  @@@@@@@@  @@@@@@@   @@@  @@@  
#  @@!  @@@  @@!  @@@  !@@       @@!  @@@  
#  !@   @!@  !@!  @!@  !@!       !@!  @!@  
#  @!@!@!@   @!@!@!@!  !!@@!!    @!@!@!@!  
#  !!!@!!!!  !!!@!!!!   !!@!!!   !!!@!!!!  
#  !!:  !!!  !!:  !!!       !:!  !!:  !!!  
#  :!:  !:!  :!:  !:!      !:!   :!:  !:!  
#   :: ::::  ::   :::  :::: ::   ::   :::  
#  :: : ::    :   : :  :: : :     :   : :  
#                                          

userroot(){
	SCRIPTS="/home/sm0g/scripts"
}

usersm0g(){
	SCRIPTS="${HOME}/scripts"
	"${SCRIPTS}/walper.sh" -s
}


[ ${USER} = "root" ] && userroot || usersm0g

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

echo $(clear)
reset=$(tput sgr0)
bold=$(tput bold)

#PS1="\n\[\e[0;34m\]┌─┄┄[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\w\e[0;34m]─┄[\[\e[1;36m\]${HOSTNAME%%.*}\[\e[0;34m\]]\[\e[1;35m\]: \$\[\e[0;34m\]\n\[\e[0;34m\]└──┄┄ \[\e[1;35m\]>> \[\e[00;00m\]"

 PS1="\[\e[0m\] \[\e[0;35m\]\u\[\e[1;37m\] @\e[0;31m\] ♥ \[\e[0;33m\]\W\[\e[0m\]\[\e[1;37m\]:\[\e[0m\] "


# Visualiza los ficheros y directorios 
function cdls { cd "$1"; ls --color;}

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

# Colored MAN Pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Alias
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias upd='sudo pacman -Syyu && figlet -f Digital Update Complete'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias cd..='cd ..'
alias _='sudo'
# alias ufetch='${SCRIPTS}/ufetch.sh'
alias blocks='${SCRIPTS}/blocks1'
alias sysinfo='${SCRIPTS}/syswh.sh'
alias nerd='${SCRIPTS}/nerdinfo'
# alias vim='nvim'
# figlet -f Poison sm0g
