clear
echo -e "${YELLOW}INSTALLING MUSIC..."
pkg i mpv > /dev/null 2>&1
mpv music.mp3 --no-video --loop &>/dev/null &
bash start-generator.sh