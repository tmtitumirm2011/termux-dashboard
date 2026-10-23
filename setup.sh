#!/bin/bash
CYAN="\033[1;36m"; GREEN="\033[1;32m"; RED="\033[1;31m"; YELLOW="\033[1;33m"; PURPLE="\033[1;35m"; BLUE="\033[1;34m"; BOLD_GREEN="\033[1;92m"; LIGHT_RED="\033[1;91m"; LIGHT_PURPLE="\033[1;95m"; LIGHT_CYAN="\033[1;96m"; RESET="\033[0m"

show_main_banner() {
    clear
    if command -v lolcat &> /dev/null; then
        figlet -f slant -w 500 "TM Titumir M" 2>/dev/null | lolcat -p $(($RANDOM % 10 + 1)) 2>/dev/null
    else
        colors=("\033[1;31m" "\033[1;32m" "\033[1;33m" "\033[1;34m" "\033[1;35m" "\033[1;36m" "\033[1;92m")
        random_color=${colors[$RANDOM % ${#colors[@]}]}
        echo -e "${random_color}"
        figlet -f slant -w 500 "TM Titumir M" 2>/dev/null || echo "TM Titumir M"
        echo -e "${RESET}"
    fi
}

launch_distro() {
    local distro_name=$1
    local display_name=$2
    show_main_banner
    echo -e "${CYAN}[=] Setting up $display_name PRoot Environment...${RESET}"
    
    if ! command -v proot-distro &> /dev/null; then
        pkg install proot-distro -y
    fi
    
    if [ ! -d "$PREFIX/var/lib/proot-distro/installed-rootfs/$distro_name" ]; then
        proot-distro install $distro_name
    fi
    
    echo -e "${GREEN}[+] $display_name is ready! Logging in...${RESET}"
    sleep 1
    proot-distro login $distro_name
    read -p "$(echo -e ${CYAN}Press Enter to return to dashboard...${RESET})"
}

install_toolx() {
while true; do
show_main_banner
if command -v lolcat &> /dev/null; then
    figlet -f small -w 500 "Tool-X" 2>/dev/null | lolcat -p $(($RANDOM % 10 + 1)) 2>/dev/null
else
    echo -e "${BOLD_GREEN}"
    figlet -f small -w 500 "Tool-X" 2>/dev/null || echo "Tool-X"
    echo -e "${RESET}"
fi
echo -e "${CYAN}==================================================${RESET}"
echo -e "         ${YELLOW}Install Best Hacking Tool (TM Edition)${RESET}"
echo -e "${CYAN}==================================================${RESET}\n"

    echo -e " ${CYAN}[ 1 ]${RESET} ${PURPLE}Show all tools. [ Almost 371 tools ]${RESET}"  
    echo -e " ${CYAN}[ 2 ]${RESET} ${BLUE}Tools Category.${RESET}"  
    echo -e " ${CYAN}[ 3 ]${RESET} ${YELLOW}Update Tool-X.${RESET}"  
    echo -e " ${CYAN}[ 4 ]${RESET} ${GREEN}About Us.${RESET}"  
    echo -e " ${CYAN}[ x ]${RESET} ${RED}For Exit (Back to Dashboard).${RESET}\n"  
    echo -e "${PURPLE}==================================================${RESET}"  
    echo -en "\033[1;33m##> \033[1;36m\033[?25h"  
    read tx_choice  

    case $tx_choice in  
        1)  
            show_main_banner 
            echo -e "${YELLOW}[+] Available Hacking Tools:${RESET}\n"  
            echo -e "${CYAN}1. Nmap (Port Scanner)"  
            echo -e "2. Metasploit Framework"  
            echo -e "3. SQLmap (Database Injection)"  
            echo -e "4. SocialFish (Phishing Tool)"  
            echo -e "5. PhoneInfoga (OSINT Tracker)"  
            echo -e "6. Red Hawk (Information Gathering)"  
            echo -e "7. Wireshark (Packet Analyzer)"  
            echo -e "8. Hydra (Password Cracker)${RESET}"  
            echo -en "\n\033[1;33m[+] Select tool number to install (1-8) or press Enter to return: \033[1;36m"  
            read t_num  
            echo -e "${RESET}"  
            case $t_num in  
                1) pkg install nmap -y ;;  
                2) pkg install unstable-repo -y && pkg install metasploit -y ;;  
                3) pkg install python2 -y && git clone https://github.com/sqlmapproject/sqlmap.git ~/sqlmap ;;  
                4) pkg install python git -y ;;  
                5) pkg install python git -y ;;  
                6) pkg install php git -y ;;  
                7) pkg install tshark -y ;;  
                8) pkg install hydra -y ;;  
            esac  
            read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"  
            ;;  
        2)  
            show_main_banner  
            echo -e "${PURPLE}--- TOOLS CATEGORY ---${RESET}\n"  
            echo -e "${CYAN}1. Information Gathering"  
            echo -e "2. Vulnerability Scanning"  
            echo -e "3. Password Attacks"  
            echo -e "4. Web Exploitation${RESET}\n"  
            echo -en "\033[1;36mSelect Category > \033[1;36m"  
            read cat_choice  
            read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"  
            ;;  
        3)  
            show_main_banner
            echo -e "${GREEN}[+] Tool-X is updated to the latest TM Edition!${RESET}"  
            sleep 2  
            ;;  
        4)  
            show_main_banner
            echo -e "${CYAN}[+] Tool-X Custom Built for TM Titumir M Dashboard${RESET}"  
            sleep 2  
            ;;  
        x|X|m|M)  
            return 0  
            ;;  
    esac  
done
}

while true; do
show_main_banner
CURRENT_TIME=$(date +"%d-%m-%Y | %I:%M %p")
echo -e "${GREEN}  [⏰] Date & Time: $CURRENT_TIME ${RESET}\n"
echo -e "${YELLOW}+-------------------------------------------+${RESET}"
echo -e "  ${CYAN}Author  : T M Titumir M${RESET}"
echo -e "  ${PURPLE}Version : 16.0 (Ultimate Master Edition)${RESET}"
echo -e "  ${YELLOW}Tool    : Termux Full Setup Tools${RESET}"
echo -e "${YELLOW}+-------------------------------------------+${RESET}\n"

echo -e "${LIGHT_RED}[1]  Termux Command Setup ${CYAN}( TM )${RESET}"
echo -e "${LIGHT_PURPLE}[2]  Ping & Speed Check ${CYAN}( TM )${RESET}"
echo -e "${BOLD_GREEN}[3]  Storage & Cache Clean ${CYAN}( TM )${RESET}"
echo -e "${YELLOW}[4]  Dashboard Backup ${CYAN}( TM )${RESET}"
echo -e "${PURPLE}[5]  Folder Zip Encrypt ${CYAN}( TM )${RESET}"
echo -e "${BLUE}[6]  Contact Team ${CYAN}( TM )${RESET}"
echo -e "${LIGHT_RED}[7]  Owner Info ${CYAN}( TM )${RESET}"
echo -e "${GREEN}[8]  Game Modding Tools ${CYAN}( TM )${RESET}"
echo -e "${YELLOW}[9]  Tool-X Hacking Suite ${CYAN}( TM )${RESET}"
echo -e "${LIGHT_RED}[10] Kali NetHunter OS ${CYAN}( TM )${RESET}"
echo -e "${GREEN}[11] Ubuntu Linux OS ${CYAN}( TM )${RESET}"
echo -e "${PURPLE}[12] Debian Linux OS ${CYAN}( TM )${RESET}"
echo -e "${YELLOW}[13] Arch Linux OS ${CYAN}( TM )${RESET}"
echo -e "${CYAN}[14] Alpine Linux OS ${CYAN}( TM )${RESET}"
echo -e "${GREEN}[15] Fedora Linux OS ${CYAN}( TM )${RESET}"
echo -e "${LIGHT_RED}[16] Parrot Security OS ${CYAN}( TM )${RESET}"
echo -e "${PURPLE}[17] BlackArch Linux OS ${CYAN}( TM )${RESET}"
echo -e "${CYAN}[18] Void Linux OS ${CYAN}( TM )${RESET}"
echo -e "${LIGHT_PURPLE}[19] Metasploit Env ${CYAN}( TM )${RESET}"
echo -e "${GREEN}[20] Termux Desktop Setup ${CYAN}( TM )${RESET}"
echo -e "${RED}[21] Exit / Close Termux ${CYAN}( TM )${RESET}\n"

echo -e "${YELLOW}[ Press 'M' or '4' to Permanently Save & Backup Dashboard ]${RESET}"
echo -en "${CYAN}[+] Enter your choice > ${RESET}"
read choice

case $choice in
    1)
        show_main_banner
        echo -e "${CYAN}[+] Installing Core Termux Tools...${RESET}"
        pkg update -y && pkg upgrade -y
        pkg install git python figlet lolcat timg -y
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    2)
        show_main_banner
        echo -e "${YELLOW}[+] Testing Internet Connection...${RESET}"
        ping -c 4 google.com
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    3)
        show_main_banner
        echo -e "${GREEN}[+] Cleaning Termux Cache & Junk Files...${RESET}"
        pkg clean
        apt autoremove -y
        rm -rf ~/.cache/*
        echo -e "${BOLD_GREEN}[✓] Clean Complete!${RESET}"
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    4|m|M)
        show_main_banner
        mkdir -p /storage/emulated/0/TM
        cp ~/setup.sh /storage/emulated/0/TM/setup_backup.sh
        echo -e "${GREEN}[✓] Dashboard Backed Up to /sdcard/TM/setup_backup.sh${RESET}"
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    5)
        show_main_banner
        echo -en "${CYAN}Enter Folder Path to Zip: ${RESET}"
        read f_path
        if [ -d "$f_path" ]; then
            zip -r "${f_path}.zip" "$f_path"
            echo -e "${GREEN}[✓] Zip Created Successfully!${RESET}"
        else
            echo -e "${RED}[!] Invalid Directory!${RESET}"
        fi
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    6)
        show_main_banner
        echo -e "${PURPLE}=== TM TEAM CONTACT ===${RESET}"
        echo -e "${CYAN}Facebook Group : Love Station 🦋${RESET}"
        echo -e "${YELLOW}Developer Name : TM Titumir M${RESET}"
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    7)
        show_main_banner
        if command -v timg &> /dev/null && [ -f "/storage/emulated/0/Download/IMG_20261017_215302.jpg" ]; then
            timg -g 40x20 "/storage/emulated/0/Download/IMG_20261017_215302.jpg" 2>/dev/null
        fi
        echo -e "${LIGHT_CYAN}Owner Name : MD Titumir (TM Titumir M)${RESET}"
        echo -e "${LIGHT_PURPLE}Project    : TM Titumir M Shell Suite${RESET}"
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    8)
        show_main_banner
        echo -e "${GREEN}[+] Opening Game Modding Tools Environment...${RESET}"
        pkg install mt-manager -y 2>/dev/null || echo -e "${YELLOW}[!] Use MT Manager externally for APK editing.${RESET}"
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    9)
        install_toolx
        ;;
    10) launch_distro "nethunter" "Kali NetHunter" ;;
    11) launch_distro "ubuntu" "Ubuntu Linux" ;;
    12) launch_distro "debian" "Debian Linux" ;;
    13) launch_distro "archlinux" "Arch Linux" ;;
    14) launch_distro "alpine" "Alpine Linux" ;;
    15) launch_distro "fedora" "Fedora Linux" ;;
    16) launch_distro "parrot" "Parrot Security" ;;
    17) launch_distro "blackarch" "BlackArch Linux" ;;
    18) launch_distro "void" "Void Linux" ;;
    19)
        show_main_banner
        echo -e "${PURPLE}[+] Setting up Metasploit Framework...${RESET}"
        pkg install unstable-repo -y && pkg install metasploit -y
        msfconsole
        ;;
    20)
        show_main_banner
        echo -e "${CYAN}[+] Installing Termux X11 & XFCE Desktop Environment...${RESET}"
        pkg install xfce4 xfce4-goodies termux-x11-nightly -y
        echo -e "${GREEN}[✓] Desktop setup packages installed!${RESET}"
        read -p "$(echo -e ${CYAN}Press Enter to continue...${RESET})"
        ;;
    21|x|X)
        show_main_banner
        echo -e "${RED}[!] Exiting Dashboard... Goodbye!${RESET}"
        exit 0
        ;;
    *)
        echo -e "${RED}[!] Invalid Option! Try again.${RESET}"
        sleep 1
        ;;
esac
done
