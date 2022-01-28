#!/bin/bash 
WannaCheckCodeBoi5='\e[0;36m'
WannaCheckCodeBoi1='\e[96m'
WannaCheckCodeBoi3='\e[0;32m'
WannaCheckCodeBoi0='\e[1;32m'
WannaCheckCodeBoi4='\e[1;37m'
WannaCheckCodeBoi8='\e[1;31m'
WannaCheckCodeBoi2='\e[1;33m'
WannaCheckCodeBoi6='\e[1;34m'
Escape="\033";
WannaCheckCodeBoi4="${Escape}[0m";
RedF="${Escape}[31m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Escape}[36m";
Reset="${Escape}[0m";
trap ctrl_c INT
ctrl_c() {
clear
echo -e $WannaCheckCodeBoi2"[*] (Ctrl + C ) Detected, Trying To Exit... "
echo -e $WannaCheckCodeBoi8"[*] Terminating... "
windscribe disconnect
sleep 1
echo ""
clear
echo -e $WannaCheckCodeBoi6"[*] Thanks For Using WPR"
exit
}
function checkinternet() 
{
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" != 0 ]]
then
echo -e $WannaCheckCodeBoi5 " Checking For Internet: ${RedF}FAILED"
echo
echo -e $WannaCheckCodeBoi8 "This Script Needs An Active Internet Connection"
echo
echo -e $WannaCheckCodeBoi2 " Windscribe Proxy Rotator Exit"
echo && sleep 0.5
exit
else
echo -e $WannaCheckCodeBoi5 " Checking For Internet: ${LighGreenF}CONNECTED"
fi
}
checkinternet
sleep 0.5
echo ""
echo -e $WannaCheckCodeBoi2 "Checking Dependencies"
echo ""
which figlet > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $WannaCheckCodeBoi3 "[ ✔ ] Figlet............................${LighGreenF}[ found ]"
which figlet > /dev/null 2>&1
sleep 0.5
else
echo ""
echo -e $WannaCheckCodeBoi8 "[ X ] Figlet -> ${RedF}not found! "
sleep 0.5
echo -e $WannaCheckCodeBoi2 "[ ! ] Installing Figlet "
sleep 0.5
echo -e $WannaCheckCodeBoi3 ""
sudo apt-get install figlet -y
clear
echo -e $WannaCheckCodeBoi6 "[ ✔ ] Done installing .... "
which figlet > /dev/null 2>&1
fi
which lolcat > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $WannaCheckCodeBoi3 "[ ✔ ] Lolcat............................${LighGreenF}[ found ]"
which lolcat > /dev/null 2>&1
sleep 0.5
else
echo ""
echo -e $WannaCheckCodeBoi8 "[ X ] Lolcat -> ${RedF}not found! "
sleep 0.5
echo -e $WannaCheckCodeBoi2 "[ ! ] Installing Lolcat "
sleep 0.5
echo -e $WannaCheckCodeBoi3 ""
sudo apt-get install ruby
cd Downloads
git clone https://github.com/busyloop/lolcat.git
cd lolcat/bin
sudo gem install lolcat
clear
echo -e $WannaCheckCodeBoi6 "[ ✔ ] Done installing .... "
which lolcat > /dev/null 2>&1
fi
which zenity > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $WannaCheckCodeBoi3 "[ ✔ ] Zenity............................${LighGreenF}[ found ]"
which zenity > /dev/null 2>&1
sleep 0.5
else
echo ""
echo -e $WannaCheckCodeBoi8 "[ X ] Zenity -> ${RedF}not found! "
sleep 0.5
echo -e $WannaCheckCodeBoi2 "[ ! ] Installing Zenity "
sleep 0.5
echo -e $WannaCheckCodeBoi3 ""
sudo apt-get install zenity -y
clear
echo -e $WannaCheckCodeBoi6 "[ ✔ ] Done installing .... "
which zenity > /dev/null 2>&1
fi
which windscribe > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $WannaCheckCodeBoi3 "[ ✔ ] Windscribe............................${LighGreenF}[ found ]"
which windscribe > /dev/null 2>&1
sleep 0.5
else
echo ""
echo -e $WannaCheckCodeBoi8 "[ X ] Windscribe -> ${RedF}not found! "
sleep 0.5
echo -e $WannaCheckCodeBoi2 "[ ! ] Install It From https://windscribe.com/guides/linux"
echo -e $WannaCheckCodeBoi2 "[ ! ] Login Your Account by command - windscribe login And Run This Script Again"
echo -e $WannaCheckCodeBoi8 "[ ! ] Terminating The Script"
exit 1
sleep 0.5
which windscribe > /dev/null 2>&1
fi
clear
figlet "Windscribe" |lolcat -a -d 3  
figlet "Proxy" |lolcat -a -d 3 
figlet "Rotator" |lolcat -a -d 3
echo -e $WannaCheckCodeBoi6 "        BY ABH! CRACKER        " 
echo ""
echo -e $WannaCheckCodeBoi8 " (USE Ctrl+C to Stop The Script) "
echo ""
windscribe account
echo ""
echo  -e $WannaCheckCodeBoi6 "If No INFO Is Shown Here"
echo  -e $WannaCheckCodeBoi6 "Stop This Script By Ctrl +C"
echo  -e $WannaCheckCodeBoi6 "Login And Run Again This Script"
echo ""
WannaCheckCodeBoi7=$(zenity --title "✯ TIME DURATION ✯" --text "example: 10" --entry --entry-text "" --width 500 )
WannaCheckCodeBoi10=$(zenity --title "✯ PROXY COUNTRY ✯" --text "example: US" --entry --entry-text "" --width 500 )
echo ""
echo "!!! STARTED !!!"|lolcat -a -d 10
echo ""
echo ""
WannaCheckCodeBoi9=1
while [ $WannaCheckCodeBoi9 -le 999999999 ]
do
echo " # $WannaCheckCodeBoi9"
WannaCheckCodeBoi9=$(( $WannaCheckCodeBoi9 + 1))
echo ""
windscribe connect $WannaCheckCodeBoi10
echo ""
echo "!!! WAIT START !!!"|lolcat -a -d 5
echo "Duration - $WannaCheckCodeBoi7 Seconds"
while true;do echo -n .;sleep 1;done &
sleep $WannaCheckCodeBoi7
kill $!; trap 'kill $!' SIGTERM
echo ""
echo "!!! WAIT STOP !!!"|lolcat -a -d 5
echo ""
windscribe disconnect
echo ""
done
