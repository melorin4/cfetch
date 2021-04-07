#!/usr/bin/env bash
# CFetch, made by melorin4 
# https://github.com/melorin4/cfetch
# Enjoy! :)
#COLOURS
RESTORE=$(echo '\033[0m')
RED=$(echo '\033[00;31m')
GREEN=$(echo '\033[00;32m')
YELLOW=$(echo '\033[00;33m')
BLUE=$(echo '\033[00;34m')
MAGENTA=$(echo '\033[00;35m')
PURPLE=$(echo '\033[00;35m')
CYAN=$(echo '\033[00;36m')
LIGHTGRAY=$(echo '\033[00;37m')
LRED=$(echo '\033[01;31m')
LGREEN=$(echo '\033[01;32m')
LYELLOW=$(echo '\033[01;33m')
LBLUE=$(echo '\033[01;34m')
LMAGENTA=$(echo '\033[01;35m')
LPURPLE=$(echo '\033[01;35m')
LCYAN=$(echo '\033[01;36m')
WHITE=$(echo '\033[01;37m')
ORANGE=$(echo '\033[01;33m')
DARK=$(echo '\033[01;30m')
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
echo "${GREEN}╭╔═════════════════════════════════╗"╮
echo "${GREEN}╫║ ${ORANGE}λ ${LYELLOW}$HOSTNAME${WHITE}\t$USERNAME""\t\t"${GREEN} ${ORANGE}Λ ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}ξ ${LYELLOW}os${WHITE}\t\t$OS""\t\t"${GREEN}               ${ORANGE}Ξ ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}π ${LYELLOW}wm/de${WHITE}\t$DESKTOP_ENVIRONMENT""\t\t"${GREEN}          ${ORANGE}Π ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}ψ ${LYELLOW}kernel${WHITE}\t$KERNEL""\t"${GREEN}          ${ORANGE}Ψ ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}ω ${LYELLOW}ram${WHITE}\t""$RAM_USED"M / "$RAM"M"\t"${GREEN} ${ORANGE}ω ${GREEN}║╫
echo "${GREEN}╰╚═════════════════════════════════╝"╯
#
#
#



