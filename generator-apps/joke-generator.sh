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
jokes=("Why don't skeletons fight each other? They don't have the guts."
       "What do you call fake spaghetti? An impasta."
       "Why don't oysters donate to charity? Because they are shellfish."
       "What do you call cheese that isn't yours? Nacho cheese."
       "Why did the math book look sad? Because it had too many problems.")
random_joke=$((RANDOM % ${#jokes[@]}))
function echoJoke(){
  clear
  echo -e $BANNER
  echo ""
  echo -e "${RED}Random Joke${WHITE}:${YELLOW} ${jokes[$random_joke]}"
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
echoJoke