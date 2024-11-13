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
quotes=("The only way to do great work is to love what you do."
        "Life is what happens when you're busy making other plans."
        "Get busy living or get busy dying."
        "In the end, we will remember not the words of our enemies, but the silence of our friends."
        "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.")
random_index=$((RANDOM % ${#quotes[@]}))
function echoQuote(){
  clear
  echo -e $BANNER
  echo ""
  echo -e "${YELLOW}Random Quote${WHITE}:${GREEN} ${quotes[$random_index]}"
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
echoQuote