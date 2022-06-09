#!/bin/bash

#source /opt/Xilinx/Vivado/xxx/settings64.sh
source setenv.sh

cd output
#echo "program_flash -f app.bin -offset 0 -flash_type mt25ql128-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121"
#program_flash -f app.bin -offset 0 -flash_type mt25ql128-spi-x1_x2_x4 -verify -cable type xilinx_tcf url TCP:127.0.0.1:3121


program_flash -f BOOT.bin -fsbl fsbl.elf -offset 0 -flash_type qspi-x4-single -cable type xilinx_tcf
#program_flash -f BOOT.bin -fsbl fsbl.elf -offset 0x500000 -flash_type qspi-x4-single -cable type xilinx_tcf
#echo "Can not flash winbond directly"
#read -s -n1 -p "Press any key to exit ... "

#echo -e "Press any key to exit ..."
#read -s -n1

function pause(){
#	read -p "$*"
    printf "$*\n"
#    read -n 1
    read
#    printf "\n"
}
pause 'Press any key to continue'
