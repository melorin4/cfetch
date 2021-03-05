#!/bin/bash
# CFetch, made by melorin4 
# https://github.com/melorin4/cfetch
# Enjoy! :)
#COLOURS
RESTORE=$(echo -en '\033[0m')
RED=$(echo -en '\033[00;31m')
GREEN=$(echo -en '\033[00;32m')
YELLOW=$(echo -en '\033[00;33m')
BLUE=$(echo -en '\033[00;34m')
MAGENTA=$(echo -en '\033[00;35m')
PURPLE=$(echo -en '\033[00;35m')
CYAN=$(echo -en '\033[00;36m')
LIGHTGRAY=$(echo -en '\033[00;37m')
LRED=$(echo -en '\033[01;31m')
LGREEN=$(echo -en '\033[01;32m')
LYELLOW=$(echo -en '\033[01;33m')
LBLUE=$(echo -en '\033[01;34m')
LMAGENTA=$(echo -en '\033[01;35m')
LPURPLE=$(echo -en '\033[01;35m')
LCYAN=$(echo -en '\033[01;36m')
WHITE=$(echo -en '\033[01;37m')
ORANGE=$(echo -en '\033[01;33m')
DARK=$(echo -en '\033[01;30m')
#
OS=`cat /etc/os-release | grep PRETTY_NAME | sed 's/\"//g' | sed 's/.*=//g'`
RAM=$(echo "$((`cat /proc/meminfo | grep MemTotal | awk '{print $2}'`/1024))")
RAM_USED=$(echo $((`cat /proc/meminfo | grep MemAvailable | awk '{print $2}'`/1024)))
RAM_USED=$(echo $((RAM-RAM_USED)))
DESKTOP_ENVIRONMENT=$(echo $XDG_CURRENT_DESKTOP)
HOSTNAME=`cat /etc/hostname`
KERNEL=`uname -r`
USERNAME=`whoami`
#
#
#
echo -e "${GREEN}╭╔═════════════════════════════════╗"╮
echo -e "${GREEN}╫║ ${ORANGE}λ ${LYELLOW}$HOSTNAME${WHITE}  $USERNAME""\t\t"${GREEN} ${ORANGE}Λ ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}ξ ${LYELLOW}os${WHITE}\t\t$OS""\t"${GREEN}               ${ORANGE}Ξ ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}π ${LYELLOW}wm/de${WHITE}\t$DESKTOP_ENVIRONMENT""\t\t"${GREEN}          ${ORANGE}Π ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}ψ ${LYELLOW}kernel${WHITE}\t$KERNEL""\t"${GREEN}          ${ORANGE}Ψ ${GREEN}║╫
echo -e "${GREEN}╫║ ${ORANGE}ω ${LYELLOW}ram${WHITE}\t""$RAM_USED"M / "$RAM"M"\t"${GREEN} ${ORANGE}ω ${GREEN}║╫
echo -e "${GREEN}╰╚═════════════════════════════════╝"╯
#
#
#


