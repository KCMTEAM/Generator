#!/bin/bash
BLACK="\e[0;30m"
RED="\e[0;31m"
GREEN="\e[0;32m"
YELLOW="\e[0;33m"
BLUE="\e[0;34m"
MAGENTA="\e[0;35m"
CYAN="\e[0;36m"
WHITE="\e[0;37m"
RESET="\e[0m"
BANNER="
${RESET}°${RED}█████▀████████████████████████████████████████████████████ \n
█─▄▄▄▄██▄─▄▄─██▄─▀█▄─▄██▄─▄▄─██▄─▄▄▀███▀▄─███─▄─▄─██▄─▄▄─█ \n
${WHITE}█─██▄─███─▄█▀███─█▄▀─████─▄█▀███─▄─▄███─▀─█████─█████─▄█▀█ \n
▀▄▄▄▄▄▀▀▄▄▄▄▄▀▀▄▄▄▀▀▄▄▀▀▄▄▄▄▄▀▀▄▄▀▄▄▀▀▄▄▀▄▄▀▀▀▄▄▄▀▀▀▄▄▄▄▄▀ \n
${CYAN}_________________________${RED}[ ${GREEN}HAIFIL${RED} ]${CYAN}_______________________${RESET}
"
length=12
password=$(< /dev/urandom tr -dc 'A-Za-z0-9_@#$%' | head -c $length)
function echoPassword(){
  clear
  echo -e $BANNER
  echo ""
  echo -e "${RED}Generated Password${WHITE}:${GREEN} $password"
  echo ""
  function askQuestionExit(){
    printf "${YELLOW}back to main menu ${RED}[${CYAN}y/n${RED}]:# ${YELLOW}"
    read userExit
    if [[ $userExit == "y" ]]; then
      cd ..
      bash start-generator.sh
    else
      askQuestionExit
    fi
  }
  askQuestionExit
}
echoPassword