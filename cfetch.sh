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

. /etc/os-release
OS="${OS:-$NAME}"
RAM_TOTAL_BYTES=$(grep MemTotal /proc/meminfo | awk '{print $2}')
RAM_AVAIL_BYTES=$(grep MemAvailable /proc/meminfo | awk '{print $2}')

RAM_TOTAL=$((RAM_TOTAL_BYTES / 1024))
RAM_AVAIL=$((RAM_AVAIL_BYTES / 1024))
RAM_USED=$((RAM_TOTAL - RAM_AVAIL))

HOSTNAME=$(cat /etc/hostname)
KERNEL=$(uname -r | head -c7)
#
#
echo "${GREEN}╭╔═════════════════════════════════╗"╮
echo "${GREEN}╫║ ${ORANGE}λ ${LYELLOW}$HOSTNAME${WHITE}\t$USER""\t\t"${GREEN} ${ORANGE}Λ ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}ξ ${LYELLOW}os ${WHITE}\t$OS""\t\t"${GREEN}               ${ORANGE}Ξ ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}π ${LYELLOW}wm/de ${WHITE}\t$DESKTOP_SESSION""\t"${GREEN}          ${ORANGE}Π ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}ψ ${LYELLOW}kernel ${WHITE}\t$KERNEL""\t\t"${GREEN}${ORANGE} Ψ ${GREEN}║╫
echo "${GREEN}╫║ ${ORANGE}ω ${LYELLOW}ram ${WHITE}\t""$RAM_USED"M / "$RAM_TOTAL"M"\t"${GREEN} ${ORANGE}ω ${GREEN}║╫
echo "${GREEN}╰╚═════════════════════════════════╝"╯
#
#
