#!/usr/bin/env bash
# CFetch, made by melorin4 
# https://github.com/melorin4/cfetch
# Enjoy! :)
#COLOURS
RESTORE=$(echo -e '\033[0m')
RED=$(echo -e '\033[00;31m')
GREEN=$(echo -e '\033[00;32m')
YELLOW=$(echo -e '\033[00;33m')
BLUE=$(echo -e '\033[00;34m')
MAGENTA=$(echo -e '\033[00;35m')
PURPLE=$(echo -e '\033[00;35m')
CYAN=$(echo -e '\033[00;36m')
LIGHTGRAY=$(echo -e '\033[00;37m')
LRED=$(echo -e '\033[01;31m')
LGREEN=$(echo -e '\033[01;32m')
LYELLOW=$(echo -e '\033[01;33m')
LBLUE=$(echo -e '\033[01;34m')
LMAGENTA=$(echo -e '\033[01;35m')
LPURPLE=$(echo -e '\033[01;35m')
LCYAN=$(echo -e '\033[01;36m')
WHITE=$(echo -e '\033[01;37m')
ORANGE=$(echo -e '\033[01;33m')
DARK=$(echo -e '\033[01;30m')
#

. /etc/os-release
OS="${OS:-$PRETTY_NAME}"
RAM=$(echo "$((`cat /proc/meminfo | grep MemTotal | awk '{print $2}'`/1024))")
RAM_USED=$(echo $((`cat /proc/meminfo | grep MemAvailable | awk '{print $2}'`/1024)))
RAM_USED=$(echo $((RAM-RAM_USED)))
DESKTOP_ENVIRONMENT=$(echo $XDG_CURRENT_DESKTOP)
HOSTNAME=`cat /etc/hostname`
KERNEL=`uname -r`
USERNAME=$USER
#
#
#
echo -e "${GREEN}╭╔═════════════════════════════════╗"╮
echo -e "${GREEN}╫║ ${ORANGE}λ ${LYELLOW}$HOSTNAME${WHITE}\t$USERNAME""\t\t"${GREEN} ${ORANGE}Λ ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}ξ ${LYELLOW}os${WHITE}\t\t$OS""\t\t"${GREEN}               ${ORANGE}Ξ ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}π ${LYELLOW}wm/de${WHITE}\t$DESKTOP_ENVIRONMENT""\t\t"${GREEN}          ${ORANGE}Π ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}ψ ${LYELLOW}kernel${WHITE}\t$KERNEL""\t"${GREEN}          ${ORANGE}Ψ ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}ω ${LYELLOW}ram${WHITE}\t""$RAM_USED"M / "$RAM"M"\t"${GREEN} ${ORANGE}ω ${GREEN}║╫
echo -e "${GREEN}╰╚═════════════════════════════════╝"╯
#
#
#



