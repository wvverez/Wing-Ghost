#!/usr/bin/env bash
# https://github.com/wvverez

R='\033[0;31m' G='\033[0;32m' C='\033[0;36m' X='\033[0m' B='\033[1m' Y='\033[1;33m' P='\033[38;5;129m'

echo -e "${P}[+] Versión: 1.1 Author: Wvverez | Contributions: @JVJIXFMCQ= ${X}"

# Solo root
if [[ $EUID -ne 0 ]]; then echo -e "${R}[+] Ejecutar como root (sudo)${X}"; exit 1; fi

echo -e "${R}
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
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⠀${X}"  # Lo pongo resumido, pon el original
sleep 0.5

DONE=0
text="[+] Deleting all logs..."
MAX_CYCLES=35
START=$(date +%s%N)  # nanosegundos para precisión

animate() {
    local i p l duration elapsed
    for i in $(seq 1 $MAX_CYCLES); do
        [[ $DONE -eq 1 ]] && break
        for p in $(seq 0 $((${#text}-1))); do
            [[ $DONE -eq 1 ]] && break
            echo -ne "\r\033[K"
            for l in $(seq 0 $((${#text}-1))); do
                [[ $l -eq $p ]] && echo -ne "${Y}${B}${text:$l:1}${X}" || echo -ne "${C}${text:$l:1}${X}"
            done
            # Calcula duración real del ciclo
            elapsed=$((($(date +%s%N) - START) / 1000000))
            duration=$(( (elapsed * 100) / (i * 100 / MAX_CYCLES + 1) ))
            sleep 0.07
        done
    done
    echo -ne "\r\033[K${G}${B}[+] Deleting all logs... Ready${X}\n"
}

clean_logs() {
    command -v shred &>/dev/null || {
        apt-get update -qq 2>/dev/null
        apt-get install coreutils -y -qq 2>/dev/null
    }
    echo -e "${G}${B}[+] Shred Active (-u incluido)${X}"
    
    # shred con -u añadido
    find /var/log /home /root \
        -xdev \( -path /proc -o -path /sys -o -path /dev -o -path /run \) -prune -o \
        -type f \( -name "wtmp" -o -name "btmp" -o -name "lastlog" \
        -o -name "*.log" -o -name "*.log.*" \
        -o -name ".bash_history" -o -name ".zsh_history" \) \
        -exec shred -f -z -n 3 -u {} \; 2>/dev/null
    
    DONE=1
}

echo -e "${G}${B}[*] Cleaning logs...${X}"
animate & clean_logs
wait

history -c 2>/dev/null
: > ~/.bash_history 2>/dev/null
: > ~/.zsh_history 2>/dev/null

echo -e "${G}${B}[+] All logs deleted successfully!${X}\n"

shred -f -z -n 1 -u "$0" 2>/dev/null
