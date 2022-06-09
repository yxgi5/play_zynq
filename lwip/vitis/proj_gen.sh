#!/bin/bash

#source /opt/Xilinx/Vivado/xxx/settings64.sh
source setenv.sh

exit | source clean.sh -b -d

xsct create_SW_proj.tcl

if [ $? != 0 ]
then
    echo -e "\n"
    echo -e "\033[41;36m proj gen fail!!! Press any key to exit \033[0m"
    exit 1
else
    echo -e "\n"
    echo -e "\033[42;31m proj gen done!!! Press any key to exit \033[0m"
fi

# function pause(){
# #	read -p "$*"
#     printf "$*\n"
# #    read -n 1
#     read
# #    printf "\n"
# }
# pause 'Press any key to continue'
function pause(){
    read -n 1
}
pause

exit | source clean.sh -b
