#!/bin/bash

## CLEANER FUNCTION ##

# clean_exit () {

#   rm -rf $PWD/.temp/* &> /dev/null
#   rm -rf $PWD/1 &> /dev/null
#   rm -rf $PWD/2 &> /dev/null
#   clear && echo -e "\nCtrl-C caught...Performing Clean Up Thanks for Using.\n" && sleep 1s
#   echo -e "Exiting the ADB-Toolkit, Thanks for using."
#   echo -e "\nDONE"
#   exit

# }

# trap_ctrlc () {
#     clean_exit
# }

# trap "trap_ctrlc" 2

option_list () {


echo -e "\n\e[37mConnection:"
echo -e "0.  SHOW CONNECTED DEVICES"
echo -e "1.  ESTABLISH A REMOTE CONNECTION WITH THE DEVICE"

echo -e "\nDevice:"
echo -e "2.  COPY ALL THE CAMERA PHOTOS"
echo -e "3.  COPY ALL THE DOWNLOADS"
echo -e "4.  COPY ALL WHATSAPP DATA"
echo -e "5.  COPY ALL DEVICE STORAGE ( Takes time )"

echo -e "\nAuto:"
echo -e "6.    REMOTE + CAMERA PHOTOS"
echo -e "6.1.  REMOTE + DOWNLOADS"
echo -e "6.2.  REMOTE + WHATSAPP DATA"
echo -e "6.3.  REMOTE + ALL DEVICE STORAGE\e[0m"

echo -e $revised
read -p $'\e[1;4;91mSELECT:\e[0m\e[24;1;97m : ' options
 
}

## CALLING THE option list function once

revised=""
option_list

## THE LOOP STARTS FROM HERE

while [ 1 ]
do

case $options in

  "0") echo -e; bash modules/opt1;; #show connected devices
  "1") echo -e; bash modules/opt16;; # remote connection
  "2") echo -e; bash modules/opt19;; # copy camera folder
  "3") echo -e; bash modules/opt20;; # copy downloads folder
  "4") echo -e; bash modules/opt21;; # copy whatsapp folder
  "5") echo -e; bash modules/opt22;; # copy all device storage
  
  # "6") echo -e; bash modules/opt22;; # 
  # "6.1") echo -e; bash modules/opt22;; # 
  # "6.2") echo -e; bash modules/opt22;; # 
  # "6.3") echo -e; bash modules/opt22;; # 

  *) clear; revised="\nWrong Option :-)\n"; option_list;;

esac

done


#### END OF THIS SCRIPT ####

# 1.   SHOW CONNECTED DEVICES                           24.  PUT A FILE IN DEVICE 
# 2.   RESTART ADB SERVICE 
# 3.   REBOOT SYSTEM
# 4.   REBOOT TO RECOVERY MODE                          25.  GO TO METASPLOIT SECTION 
# 5.   REBOOT TO FASTBOOT/BOOTLOADER MODE 

# 6.   START A INTERACTIVE SHELL                        26.  LAUNCH AN APPLICATION 
# 7.   DUMP SYSTEM INFORMATION (Messy)                  27.  CHECK IS PHONE ROOTED OR NOT 
# 8.   DUMP CPU INFORMATION (Messy)                     28.  HANG THE PHONE 
# 9.   DUMP MEMORY INFORMATION (Messy)                  29.  SEND SMS FROM THE PHONE 
# 10.  GET PHONE DETAILS
# 11.  CAPTURE BUG REPORT
# 12.  INSTALL AN PACAKAGE 'apk'
# 13.  UNINSTALL AN PACKAGE
# 14.  LIST ALL INSTALLED PACKAGE
# 15.  SEE LIVE LOG OF DEVICE
# 16.  ESTABLISH A REMOTE CONNECTION WITH THE DEVICE

# 17.  CAPTURE A SCREENSHOT ANONYMOUSLY
# 18.  RECORD THE SCREEN ANONYMOUSLY
# 19.  COPY ALL THE CAMERA PHOTOS
# 20.  COPY ALL THE DOWNLOADS
# 21.  COPY ALL WHATSAPP DATA
# 22.  COPY ALL DEVICE STORAGE ( Takes time )           A.  ABOUT AUTHOUR 
# 23.  COPY A SPECIFIED FILE OR FOLDER                  EXIT or press Ctrl+c