#Please do not use any code without giving me creds. Thanks <3
#BeemoWasTaken
#! /bin/bash
clear
r=true
start()
{
echo
echo " ___________.__               .__         "
echo " \_   _____/|  | ___.__. _____|__|____    "
echo "  |    __)_ |  |<   |  |/  ___/  \__  \   "
echo "  |        \|  |_\___  |\___ \|  |/ __ \_ "
echo " /_______  /|____/ ____/____  >__(____  / "
echo "         \/      \/         \/        \/  "
echo "                                 v 1.0.5"
if (( $EUID != 0 )); then
$r = false
else
echo "                             !Super User¡"
echo
fi
echo "------------Made by beemo#9514------------"

echo "[1] Load msfconsole backdoor   [9]  Shellphish(ADDON)" 
echo "[2] Change MAC Address         [10] NMAP"
echo "[3] ifconfig                   [11] Start anonsurf(requires sudo access)"
echo "[4] data sniffing              [12] Stop anonsurf(requires sudo access)"
echo "[5] Enable managed mode        [13] Start WireShark"
echo "[6] Enable monitor mode        [14] WiFi-Pumpkin(ADDON)"
echo "[7] Veil                       [15] errors"
echo "[8] Metasploit Framework       [16] Discord"
echo "[99] install addons            [17] Buy me a coffe"
echo 
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' option
if [[ $option == 1 || $option == 01 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Resource Location: \e[0m' bl
msfconsole --resource $bl
clear
start
elif [[ $option == 2 || $option == 01 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Network Card: \e[0m' dev
ifconfig $dev down
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] New MAC: \e[0m' addr
ifconfig $dev hw ether $addr
ifconfig $dev up
echo changed MAC Address
elif [[ $option == 3 || $option == 03 ]]; then
ifconfig
elif [[ $option == 4 || $option == 04 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Network Card: \e[0m' ds
ifconfig $ds down
iwconfig $ds mode monitor
ifconfig $ds up
clear
airodump-ng $ds
clear
start
elif [[ $option == 5 || $option == 05 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Network Card: \e[0m' ds
ifconfig $ds down
iwconfig $ds mode managed
ifconfig $ds up
clear
start
elif [[ $option == 10 || $option == 010 ]]; then
clear

#NMAP
echo
echo " ___________.__               .__         "
echo " \_   _____/|  | ___.__. _____|__|____    "
echo "  |    __)_ |  |<   |  |/  ___/  \__  \   "
echo "  |        \|  |_\___  |\___ \|  |/ __ \_ "
echo " /_______  /|____/ ____/____  >__(____  / "
echo "         \/      \/         \/        \/  "
echo "                                 v 1.0.5"
echo "------------------NMAP--------------------"

echo "[1] Ping hosts"
echo "[2] Find Vulnerabilities(requires sudo access)" 
echo "[3] Back"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' noption
if [[ $noption == 1 || $noption == 01 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] IP: \e[0m' ph
nmap -sP $ph /24
elif [[ $noption == 2 || $noption == 02 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] IP: \e[0m' ph
echo
echo "--------------------------------------"
echo "This may take some time so be patient!"
echo "--------------------------------------"
echo
nmap --script vuln $ph
elif [[ $noption == 3 || $noption == 03 ]];
then
clear
start
fi
#End of NMAP
elif [[ $option == 7 || $option == 07 ]]; then
clear
veil
clear
start
elif [[ $option == 8 || $option == 08 ]]; then
msfconsole
clear
start
elif [[ $option == 9 || $option == 09 ]]; then
clear
cd addons
cd shellphish
clear
./shellphish.sh
clear
start

elif [[ $option == 6 || $option == 06 ]]; then
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Network Card: \e[0m' ds
ifconfig $ds down
iwconfig $ds mode monitor
ifconfig $ds up
clear
start
elif [[ $option == 11 || $option == 011 ]]; then
sudo anonsurf start
clear
start
elif [[ $option == 12 || $option == 012 ]]; then
sudo anonsurf stop
clear
start
elif [[ $option == 13 || $option == 013 ]]; then
wireshark
clear
start
elif [[ $option == 14 || $option == 014 ]]; then
cd addons
cd wifipumpkin3
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Network Card: \e[0m' dss
clear
sudo wifipumpkin3 -i $dss
clear
start
elif [[ $option == 15 || $option == 015 ]]; then
nano CommonErrors.txt
clear
start
elif [[ $option == 16 || $option == 016 ]]; then
firefox https://discord.gg/PHnHgs8vEc
elif [[ $option == 17 ]]; then
firefox https://paypal.me/ElysiaCoffe
elif [[ $option == "" || $option == "" ]]; then
clear
start
elif [[ $option == 99 || $option == 099 ]]; then
clear

#workshop

echo
echo " ___________.__               .__         "
echo " \_   _____/|  | ___.__. _____|__|____    "
echo "  |    __)_ |  |<   |  |/  ___/  \__  \   "
echo "  |        \|  |_\___  |\___ \|  |/ __ \_ "
echo " /_______  /|____/ ____/____  >__(____  / "
echo "         \/      \/         \/        \/  "
echo "                                 v 1.0.5"
echo "-----------------Addons-------------------"
echo
echo "[1] Shellphish(a great phising tool) author:thelinuxchoice"
echo "[2] Wifi-Pumpkin(rouge ap) author:mh4x0f"
echo "[99] Back"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' woption
if [[ $woption == 1 || $woption == 01 ]]; then
echo "--------------------------------------"
echo "      installing shellphish"
echo "--------------------------------------"
cd addons
git clone https://github.com/richardsonjf/shellphish.git
cd shellphish
chmod +x shellphish.sh
clear
start

elif [[ $woption == 2 || $woption == 02 ]]; then
cd addons
echo "--------------------------------------"
echo "      installing WiFi-pumpkin"
echo "--------------------------------------"
git clone https://github.com/P0cL4bs/wifipumpkin3.git
cd wifipumpkin3
sudo apt-get install python3-setuptools
sudo apt install python3-dev
sudo python3 setup.py install
clear
start
elif [[ $woption == 3 || $woption == 03 ]]; then

echo hi

elif [[ $woption == 99 || $woption == 099 ]]; then
clear
start
fi

#end of workshop
fi
}
echo -e "\e[31m!!Disclaimer: Developers assume no liability and are not responsible for any misuse or damage caused by Elysia!!\e[0m"
echo " "
read -p 'Do you aggree[Y/N] ' yn
if [[ $yn == "Y" || $yn == "y" ]]; then
clear
start
else
echo "Please aggree to the TOS to use Elysia"
fi
