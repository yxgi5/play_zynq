#!/bin/bash

echo -e "\033[42;31mScript ver 0.1.001 \nMake sure the env path is correct before running!! \033[0m"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    #echo "OSTYPE = $OSTYPE"
    source /opt/Xilinx/Vivado/2020.1/settings64.sh
else
	# tested with msys2
    #echo "OSTYPE = $OSTYPE"
    source 'D:\Xilinx\Vivado\2020.1\settings64.sh'
fi
#vivado -mode tcl

