#!/usr/bin/bash
# https://github.com/wvverez

RED='\033[0;31m'; GREEN='\033[0;32m'; CYAN='\033[0;36m'; RESET='\033[0m'; BOLD='\033[1m'; YELLOW='\033[1;33m'; PURPLE='\033[38;5;129m'

echo -e "${RED}
 _       _______   ________   ________  ______  ___________
| |     / /  _/ | / / ____/  / ____/ / / / __ \/ ___/_  __/
| | /| / // //  |/ / / __   / / __/ /_/ / / / /\__ \ / /   
| |/ |/ // // /|  / /_/ /  / /_/ / __  / /_/ /___/ // /    
|__/|__/___/_/ |_/\____/   \____/_/ /_/\____//____//_/     
${RESET}"

echo -e "${PURPLE}Versión: 1.0                        Author: Wvverez${RESET}"

echo -e "${RED}
⢀⣤⣤⣤⣄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣤⣤⣤⣀
⠈⠻⢿⣿⣿⡿⠛⠛⠿⢶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⡶⢾⠟⠛⢻⣿⣿⡿⠟⠁
⠀⠀⠀⡿⢿⡟⢋⣩⠍⠳⢼⣘⡵⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠴⢪⣃⣯⠞⠉⣍⡉⢻⡿⢿⠃⠀⠀
⠀⠀⠀⢹⣎⡽⠋⢸⠗⠛⣲⣾⣹⠍⠚⠷⢦⡀⠀⠠⠀⠀⠀⠀⠀⡤⠀⢀⡤⠾⡓⠈⣯⡷⣖⠋⠳⣇⠙⡯⣁⡾⠀⠀⠀
⠀⠀⠀⠀⢧⠔⡕⣇⠹⡿⢗⣞⡁⢆⠇⢜⢴⣜⢦⡀⠱⡀⠀⠀⠌⠀⡴⢋⡴⢅⡀⡲⡉⣳⡸⢿⠏⣸⢺⠲⡼⠁⠀⠀⠀
⠀⠀⠀⠀⠈⣟⡹⡏⢧⣿⣜⢶⣿⡩⢵⠗⢄⠋⢇⠱⡀⢡⠀⡘⢀⠞⣴⠍⡐⠚⣬⢝⣺⣶⢣⣿⡴⢻⢪⢹⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠈⢗⣯⣦⣿⡌⢷⡹⣿⣓⣿⣾⣿⣿⣶⣱⣈⡀⣇⣌⣶⣿⣿⣷⣯⡞⣻⣏⣾⠫⣾⣴⣭⣺⠋⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠈⢧⠷⢧⣱⡎⠻⠇⢸⣿⣿⣿⣿⣿⡏⡿⣿⣿⡸⣿⣿⣿⣿⣿⡃⢸⡟⢥⣞⡵⠿⡴⠃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢸⣇⡰⠿⠿⣾⣿⡈⠿⢿⡹⡿⠱⣉⢰⣿⣇⢉⡸⢹⡿⡿⠿⢁⣸⣷⡿⠿⢶⣰⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⣾⣿⣿⣮⣤⡎⠁⢸⡿⠋⣟⣛⣿⡐⣹⡇⠈⢱⣤⣵⣿⣿⣷⣢⡄⠀⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⠋⢲⣼⣿⣸⡿⣛⢿⣇⣧⣥⡖⠋⣿⣿⣿⠿⣿⣿⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣛⣟⡿⢿⣿⣿⣷⢵⣨⢟⣻⡾⣿⣯⡟⡹⣏⣮⣾⣿⣿⣿⣿⣿⣟⣟⣿⣦⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠿⣿⣿⣏⣦⣿⣿⣿⢷⣝⠷⣩⠛⡞⠁⠙⠀⠱⠛⢏⡦⣫⣾⣿⣿⡿⣭⣟⣷⣿⠿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⡽⣻⢿⣿⣿⣭⣿⣿⣼⡱⠁⠀⠀⠀⠀⢦⣧⣿⡿⣧⣿⣿⡽⣿⢯⣿⠛⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣷⣷⡟⣿⣿⣿⣾⣿⠃⠀⠀⠀⠀⠀⠘⣿⣷⣿⣟⣿⡻⣽⣾⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠿⠟⠿⢿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⡞⠿⠛⠿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠁⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠈⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀${RESET}"

sleep 0.5

text="[+] Deleting all logs..."
animate() {
    for i in {1..35}; do
        for p in $(seq 0 $((${#text}-1))); do
            echo -ne "\r\033[K"
            for l in $(seq 0 $((${#text}-1))); do
                if [[ $l -eq $p ]]; then
                    echo -ne "${YELLOW}${BOLD}${text:$l:1}${RESET}"
                else
                    echo -ne "${CYAN}${text:$l:1}${RESET}"
                fi
            done
            sleep 0.07
        done
    done
    echo -ne "\r\033[K${GREEN}${BOLD}[+] Deleting all logs... Ready${RESET}\n"
}

SHRED_ARGS="-f -z -n 3"

shred_check() {
    if ! command -v shred &>/dev/null; then
        sudo apt-get update -qq 2>/dev/null
        sudo apt-get install coreutils -y -qq 2>/dev/null
    fi
    echo -e "${GREEN}${BOLD}[+] Shred Active${RESET}"
}

clean_logs() {
    find /var/log /home /root -type f \( \
        -name "wtmp" -o \
        -name "btmp" -o \
        -name "lastlog" -o \
        -name "*.log" -o \
        -name ".bash_history" -o \
        -name ".zsh_history" \
    \) -exec shred $SHRED_ARGS {} \; 2>/dev/null
    
    find / -name "*\.log\.*" 2>/dev/null -exec shred $SHRED_ARGS {} \; 2>/dev/null
}

echo -e "${GREEN}${BOLD}[*] Cleaning logs...${RESET}"

if [[ $EUID -ne 0 ]]; then
    echo -e "${RED}[+] Not running as root${RESET}"
    read -p "Press ENTER to continue or Ctrl+C to cancel: "
else
    animate
fi

shred_check
clean_logs

history -c 2>/dev/null
> ~/.bash_history 2>/dev/null
> ~/.zsh_history 2>/dev/null

echo -e "${GREEN}${BOLD}[+] All logs deleted successfully!${RESET}"
echo ""
