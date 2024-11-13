#!/bin/bash
#GENERATOR APPS 1 IN 5 CREATE USING SHELL SCRIPT
#COPYRIGT © 2024 - DEVELOP BY HAIPIL
#DONT FORGET TO GIVE SOME STAR ;)
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
function startGenerate(){
  clear #clear terminal
  echo -e $BANNER #showing banner
  echo "" #spacing
  function selection(){
    echo -e "   ${RED}[ ${CYAN}1 ${RED}] ${WHITE}>> ${RED}RANDOM NUMBER GENERATOR${RESET}"
    sleep 0.7
    echo -e "   ${RED}[ ${CYAN}2 ${RED}] ${WHITE}>> ${RED}RANDOM QUOTE GENERATOR${RESET}"
    sleep 0.7
    echo -e "   ${RED}[ ${CYAN}3 ${RED}] ${WHITE}>> ${RED}RANDOM JOKE GENERATOR${RESET}"
    sleep 0.7
    echo -e "   ${RED}[ ${CYAN}4 ${RED}] ${WHITE}>> ${RED}RANDOM NAME GENERATOR${RESET}"
    sleep 0.7
    echo -e "   ${RED}[ ${CYAN}5 ${RED}] ${WHITE}>> ${RED}PASSWORD GENERATOR${RESET}"
    sleep 0.7
    echo ""
    echo -e "   ${RED}[ ${CYAN}G ${RED}] ${WHITE}>> ${RED}GITHUB${RESET}"
    sleep 0.7
    echo -e "   ${RED}[ ${CYAN}0 ${RED}] ${WHITE}>> ${RED}EXIT${RESET}"
    sleep 0.7
    function askQuestion(){
      echo ""
      printf "   ${WHITE} ⎙ ${RED}CHOOSE:# ${YELLOW}"
      read userChoice
      if [[ $userChoice == "1" ]]; then
        cd generator-apps
        bash number-generator.sh
      elif [[ $userChoice == "2" ]]; then
        cd generator-apps
        bash quote-generator.sh
      elif [[ $userChoice == "3" ]]; then
        cd generator-apps
        bash joke-generator.sh
      elif [[ $userChoice == "4" ]]; then
        cd generator-apps
        bash name-generator.sh
      elif [[ $userChoice == "5" ]]; then
        cd generator-apps
        bash password-generator.sh
      elif [[ $userChoice == "G" || $userChoice == "g" ]]; then
        echo ""
        echo -e "${GREEN}OPENING...${RESET}"
        sleep 0.7
        xdg-open "https://github.com/KCMTEAM"
        sleep 0.7
        bash start-generator.sh
      elif [[ $userChoice == "0" ]]; then
        clear
        echo -e $BANNER
        echo -e "${YELLOW}THANKS FOR USING GENERATOR BY HAIPIL${RESET}"
        pkill mpv
      else
        clear
        pkill mpv
      fi
    }
    askQuestion
  }
  selection
}
startGenerate